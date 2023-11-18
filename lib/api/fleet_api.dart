import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/ship.dart';

class FleetApi {
  Future<List<Ship>> listShips() async {
    Response response = await dio.get('/my/ships');
    List<Ship> ships = [];
    for (var element in response.data['data']) {
      Ship ship = Ship.fromMap(element);
      ships.add(ship);
    }
    return ships;
  }
}
