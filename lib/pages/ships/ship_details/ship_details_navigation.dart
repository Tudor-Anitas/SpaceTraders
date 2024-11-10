import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';
import 'package:space_traders/methods/duration.dart';

class ShipDetailsNavigation extends StatefulWidget {
  final PageController navigationController;
  const ShipDetailsNavigation({
    super.key,
    required this.navigationController,
  });

  @override
  State<ShipDetailsNavigation> createState() => _ShipDetailsNavigationState();
}

class _ShipDetailsNavigationState extends State<ShipDetailsNavigation> {
  Duration animationSpeed = 1.sec;
  Curve curve = Curves.fastLinearToSlowEaseIn;
  @override
  Widget build(BuildContext context) {
    int pageIndex = context.watch<ShipsCubit>().state.pageIndex;

    return Expanded(
      flex: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActiveContainerIcon(
            isActive: pageIndex == 0,
            index: 0,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(0);
              widget.navigationController
                  .animateToPage(0, duration: animationSpeed, curve: curve);
            },
          ),
          ActiveContainerIcon(
            isActive: pageIndex == 1,
            index: 1,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(1);
              widget.navigationController
                  .animateToPage(1, duration: animationSpeed, curve: curve);
            },
          ),
          ActiveContainerIcon(
            isActive: pageIndex == 2,
            index: 2,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(2);
              widget.navigationController
                  .animateToPage(2, duration: animationSpeed, curve: curve);
            },
          ),
          ActiveContainerIcon(
            isActive: pageIndex == 3,
            index: 3,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(3);
              widget.navigationController
                  .animateToPage(3, duration: animationSpeed, curve: curve);
            },
          ),
        ],
      ),
    );
  }
}

class ActiveContainerIcon extends StatelessWidget {
  final bool isActive;
  final int index;
  final Function() onPressed;
  const ActiveContainerIcon(
      {super.key,
      required this.isActive,
      required this.index,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActive
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
      ),
      child: IconButton(
          onPressed: onPressed, icon: getIcon(context, index, isActive)),
    );
  }
}

Icon getIcon(BuildContext context, int index, bool isActive) {
  switch (index) {
    case 0:
      return PhosphorIcon(PhosphorIcons.rocket(),
          color: isActive
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSecondaryContainer);
    case 1:
      return PhosphorIcon(PhosphorIcons.cpu(),
          color: isActive
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSecondaryContainer);
    case 2:
      return PhosphorIcon(PhosphorIcons.nuclearPlant(),
          color: isActive
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSecondaryContainer);
    case 3:
      return PhosphorIcon(PhosphorIcons.engine(),
          color: isActive
              ? Theme.of(context).colorScheme.onPrimary
              : Theme.of(context).colorScheme.onSecondaryContainer);
    default:
      return PhosphorIcon(PhosphorIcons.warningDiamond());
  }
}
