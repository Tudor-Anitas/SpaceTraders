import 'package:flutter/material.dart';
import 'package:space_traders/components/curves.dart';
import 'package:space_traders/components/ship_details/cargo_details.dart';
import 'package:space_traders/components/ship_details/cooldown_details.dart';
import 'package:space_traders/components/ship_details/crew_details.dart';
import 'package:space_traders/components/ship_details/engine_details.dart';
import 'package:space_traders/components/ship_details/frame_details.dart';
import 'package:space_traders/components/ship_details/fuel_details.dart';
import 'package:space_traders/components/ship_details/modules_details.dart';
import 'package:space_traders/components/ship_details/mounts_details.dart';
import 'package:space_traders/components/ship_details/nav_details.dart';
import 'package:space_traders/components/ship_details/reactor_details.dart';
import 'package:space_traders/components/ship_details/registraction_details.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/pages/ships/ship_details/ship_details.dart';

class DisplayPanel extends StatefulWidget {
  final ShipDetailsPage page;
  final dynamic value;
  const DisplayPanel({
    super.key,
    required this.page,
    required this.value,
  });

  @override
  State<DisplayPanel> createState() => _DisplayPanelState();
}

class _DisplayPanelState extends State<DisplayPanel> {
  bool isClosed = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isClosed = !isClosed;
            });
          },
          child: Row(
            children: [
              Text(widget.page.name),
              Icon(
                isClosed ? Icons.arrow_drop_down : Icons.arrow_drop_up,
              ),
            ],
          ),
        ),
        AnimatedSize(
          duration: 500.ms,
          curve: CustomCurves.defaultCurve,
          child: isClosed
              ? const SizedBox()
              : Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(Spacing.medium),
                  decoration: BoxDecoration(
                    color: Theme.of(context).focusColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: getPage(widget.page, widget.value),
                ),
        ),
      ],
    );
  }

  Widget getPage(ShipDetailsPage page, dynamic value) {
    switch (page) {
      case ShipDetailsPage.registration:
        return RegistractionDetails(reg: value);
      case ShipDetailsPage.nav:
        return NavDetails(shipNav: value);
      case ShipDetailsPage.crew:
        return CrewDetails(crew: value);
      case ShipDetailsPage.frame:
        return FrameDetails(frame: value);
      case ShipDetailsPage.reactor:
        return ReactorDetails(reactor: value);
      case ShipDetailsPage.engine:
        return EngineDetails(engine: value);
      case ShipDetailsPage.cooldown:
        return CooldownDetails(cooldown: value);
      case ShipDetailsPage.modules:
        return ModulesDetails(modules: value);
      case ShipDetailsPage.mounts:
        return MountsDetails(mounts: value);
      case ShipDetailsPage.cargo:
        return CargoDetails(cargo: value);
      case ShipDetailsPage.fuel:
        return FuelDetails(fuel: value);
    }
  }
}
