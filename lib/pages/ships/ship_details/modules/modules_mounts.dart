import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/modules/modules_card.dart';
import 'package:space_traders/pages/ships/ship_details/modules/mounts_card.dart';

class ModuleMountsDetails extends StatefulWidget {
  final Ship ship;
  const ModuleMountsDetails({super.key, required this.ship});

  @override
  State<ModuleMountsDetails> createState() => _ModuleMountsDetailsState();
}

class _ModuleMountsDetailsState extends State<ModuleMountsDetails> {
  bool isModulesActive = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isModulesActive = true;
                });
              },
              child: Text(
                'Modules',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: isModulesActive
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.outlineVariant),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isModulesActive = false;
                });
              },
              child: Text(
                'Mounts',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: !isModulesActive
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.outlineVariant),
              ),
            )
          ],
        ),
        const SizedBox(
          height: Spacing.large,
        ),
        Stack(
          children: [
            AnimatedContainer(
              duration: 750.ms,
              curve: Curves.fastEaseInToSlowEaseOut,
              transform: Matrix4.translationValues(
                  translateX(isModulesActive, 'modules', screenWidth), 0, 0),
              child: MountsModulesCard(
                ship: widget.ship,
                isActive: isModulesActive,
                type: MountModuleCard.modules,
              ),
            ),
            AnimatedContainer(
              duration: 750.ms,
              curve: Curves.fastEaseInToSlowEaseOut,
              transform: Matrix4.translationValues(
                  translateX(isModulesActive, 'mounts', screenWidth), 0, 0),
              child: MountsModulesCard(
                ship: widget.ship,
                isActive: !isModulesActive,
                type: MountModuleCard.mounts,
              ),
            )
          ],
        )
      ],
    );
  }
}

double translateX(bool isModulesActive, String page, double screenWidth) {
  if (page == 'modules' && isModulesActive) {
    return 0;
  } else if (page == 'modules' && !isModulesActive) {
    return -screenWidth;
  } else if (page == 'mounts' && isModulesActive) {
    return screenWidth;
  } else {
    return 0;
  }
}
