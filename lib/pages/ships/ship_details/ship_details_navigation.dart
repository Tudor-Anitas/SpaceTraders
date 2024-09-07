import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:space_traders/blocs/ships/ships_cubit.dart';

class ShipDetailsNavigation extends StatefulWidget {
  const ShipDetailsNavigation({
    super.key,
  });

  @override
  State<ShipDetailsNavigation> createState() => _ShipDetailsNavigationState();
}

class _ShipDetailsNavigationState extends State<ShipDetailsNavigation> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = context.watch<ShipsCubit>().state.pageIndex;
    return Expanded(
      flex: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActiveContainerIcon(
            isActive: currentIndex == 0,
            index: 0,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(0);
            },
          ),
          ActiveContainerIcon(
            isActive: currentIndex == 1,
            index: 1,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(1);
            },
          ),
          ActiveContainerIcon(
            isActive: currentIndex == 2,
            index: 2,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(2);
            },
          ),
          ActiveContainerIcon(
            isActive: currentIndex == 3,
            index: 3,
            onPressed: () {
              context.read<ShipsCubit>().changePageIndex(3);
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
