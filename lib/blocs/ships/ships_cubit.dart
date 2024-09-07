import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/api/actions_repository.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/blocs/ships/ships_state.dart';
import 'package:space_traders/blocs/state_message.dart';
import 'package:space_traders/main.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/models/shipyard.dart';
import 'package:space_traders/models/waypoint.dart';
import 'package:space_traders/models/waypoint_type.dart';
import 'package:space_traders/notifications/notification_service.dart';

class ShipsCubit extends Cubit<ShipsState> {
  ShipsCubit() : super(const ShipsState(pageIndex: 0, ships: []));

  changePageIndex(int newIndex) {
    emit(state.copyWith(pageIndex: newIndex));
  }

  setShips(List<Ship> ships) {
    emit(state.copyWith(ships: ships));
  }

  Future<void> listShips() async {
    var (code, ships) = await ActionsRepository().listShips();
    if (code == 200) {
      emit(
        state.copyWith(
          ships: ships,
        ),
      );
    }
  }

  Future<List<String>> findLocalShipyard(String systemSymbol) async {
    var (responseCode, waypointSymbols) =
        await ActionsRepository().findLocalShipyards(systemSymbol);

    if (responseCode >= 400) {
      _showSnackbarText('Could not find shipyards, some error occurred');
      return [];
    } else {
      return waypointSymbols;
    }
  }

  Future<Shipyard> getShipyard(
      String systemSymbol, String waypointSymbol) async {
    var (responseCode, shipyard) =
        await ActionsRepository().getShipyard(systemSymbol, waypointSymbol);

    if (responseCode >= 400) {
      _showSnackbarText('Cannot get ships from this shipyard :(');
      return Shipyard.fromMap(const {});
    } else {
      return shipyard;
    }
  }

  Future purchaseShip(
      BuildContext context, ShipType shipType, String waypointSymbol) async {
    var (statusCode, agent, ship, transaction) =
        await ActionsRepository().purchaseShip(shipType, waypointSymbol);

    if (statusCode >= 400) return;

    context.read<HomeCubit>().setAgent(agent);
    context.read<HomeCubit>().addTransaction(transaction);

    emit(
      state.copyWith(
        ships: [...state.ships, ship],
      ),
    );

    _showBannerText('New ship aquired!');
  }

  Future<List<Waypoint>> findAsteroids(String systemSymbol) async {
    var (statusCode, asteroidWaypoints) = await ActionsRepository()
        .listWaypointsInSystem(systemSymbol,
            type: WaypointType.ENGINEERED_ASTEROID);

    return statusCode >= 400 ? [] : asteroidWaypoints;
  }

  _showSnackbarText(String errorTxt) {
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(errorTxt),
      ),
    );
  }

  Future<int> orbit(String shipSymbol) async {
    var (statusCode, _) = await ActionsRepository().orbitShip(shipSymbol);
    return statusCode;
  }

  Future navigateShip(
      BuildContext context, String shipSymbol, String waypointSymbol) async {
    var (statusCode, _, _, e) =
        await ActionsRepository().navigateShip(shipSymbol, waypointSymbol);

    if (statusCode == 200) {
      context.read<HomeCubit>().showMessage(
          StateMessage(text: States.reload.name, key: UniqueKey()));
    } else {
      _showSnackbarText(e!.response!.data['error']['message']);
    }
  }

  Future finishTransit(String shipSymbol) async {
    await ActionsRepository().finishTransit(shipSymbol);
  }

  Future<void> mineAsteroid(String shipSymbol, int nrOfExtractions) async {
    bool hasError = false;

    for (int i = 0; i < nrOfExtractions; i++) {
      var (_, cooldown, extraction, _, e) =
          await ActionsRepository().extractResources(shipSymbol);
      if (e != null) {
        hasError = true;
        _showSnackbarText(e.response!.data['error']['message']);
        break;
      }
      if (nrOfExtractions > 1) {
        NotificationService().stepProgressNotification(i + 1,
            nrOfExtractions.toDouble(), NotificationAction.extractResources, 99,
            data: {
              'shipName': shipSymbol,
              'yield': extraction.extractionYield.symbol
            });
      } else {
        NotificationService().progressNotification(
          cooldown.remainingSeconds,
          NotificationAction.extractResources,
          data: {
            'shipName': shipSymbol,
            'yield': extraction.extractionYield.symbol
          },
        );
      }
      await Future.delayed(cooldown.remainingSeconds.sec);
    }

    if (!hasError && nrOfExtractions > 1) {
      NotificationService().stepProgressNotification(
          2, 1.toDouble(), NotificationAction.extractResources, 99);
    }

    await listShips();
  }

  _showBannerText(String text) {
    // remove any other banner before showing a new one
    rootScaffoldMessengerKey.currentState?.removeCurrentMaterialBanner();
    rootScaffoldMessengerKey.currentState?.showMaterialBanner(
      MaterialBanner(
        content: Text(text),
        actions: [
          TextButton(
              onPressed: () {
                rootScaffoldMessengerKey.currentState
                    ?.removeCurrentMaterialBanner();
              },
              child: const Text('dismiss'))
        ],
      ),
    );
  }
}
