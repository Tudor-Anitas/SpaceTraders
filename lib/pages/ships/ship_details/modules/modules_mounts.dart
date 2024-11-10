import 'package:flutter/material.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/methods/drag_detectors.dart';
import 'package:space_traders/methods/duration.dart';
import 'package:space_traders/models/ship.dart';
import 'package:space_traders/pages/ships/ship_details/modules/mounts_card.dart';

class ModuleMountsDetails extends StatefulWidget {
  final Ship ship;
  const ModuleMountsDetails({super.key, required this.ship});

  @override
  State<ModuleMountsDetails> createState() => _ModuleMountsDetailsState();
}

class _ModuleMountsDetailsState extends State<ModuleMountsDetails> {
  PageController pageController = PageController();
  int currentPage = 0;
  Duration animationDuration = 1.sec;
  Curve curve = Curves.fastEaseInToSlowEaseOut;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                pageController.animateToPage(0,
                    duration: animationDuration, curve: curve);
              },
              child: Text(
                'Modules',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: currentPage == 0
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.outlineVariant),
              ),
            ),
            GestureDetector(
              onTap: () {
                pageController.animateToPage(1,
                    duration: animationDuration, curve: curve);
              },
              child: Text(
                'Mounts',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: currentPage == 1
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.outlineVariant),
              ),
            )
          ],
        ),
        const SizedBox(
          height: Spacing.large,
        ),
        GestureDetector(
          onHorizontalDragUpdate: (details) =>
              manageSwipe(details, pageController),
          child: SizedBox(
            height: screenHeight * 0.6,
            child: PageView(
              controller: pageController,
              onPageChanged: (int page){
                setState(() {
                  currentPage = page;
                });
              },
              children: [
                AnimatedContainer(
                  duration: 750.ms,
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: MountsModulesCard(
                    ship: widget.ship,
                    isActive: currentPage == 0,
                    type: MountModuleCard.modules,
                  ),
                ),
                AnimatedContainer(
                  duration: 750.ms,
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: MountsModulesCard(
                    ship: widget.ship,
                    isActive: currentPage == 1,
                    type: MountModuleCard.mounts,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  manageSwipe(DragUpdateDetails details, PageController controller) {
    if (isLeftToRightDrag(details)) {
      if (currentPage == 1) {
        controller.animateToPage(0, duration: animationDuration, curve: curve);
      }
    } else {
      if (currentPage == 0) {
        controller.animateToPage(1, duration: animationDuration, curve: curve);
      }
    }
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
