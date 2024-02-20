// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:space_traders/blocs/home/home_cubit.dart';
// import 'package:space_traders/components/custom_button.dart';
// import 'package:space_traders/components/sizes.dart';
// import 'package:space_traders/models/shipyard.dart';

// class LocalShipyards extends StatefulWidget {
//   final AsyncSnapshot<List> snapshot;
//   final Function() onPressed;
//   const LocalShipyards({
//     super.key,
//     required this.snapshot,
//     required this.onPressed,
//   });

//   @override
//   State<LocalShipyards> createState() => _LocalShipyardsState();
// }

// class _LocalShipyardsState extends State<LocalShipyards> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: kToolbarHeight,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           for (var localWaypointSymbol in widget.snapshot.data!)
//             Row(
//               children: [
//                 CustomButton(
//                   onPressed: () {
//                     detailsFuture = context
//                         .read<HomeCubit>()
//                         .getShipyard(systemSymbol, localWaypointSymbol);
//                     waypointSymbol = localWaypointSymbol;
//                     setState(() {});
//                   },
//                   text: 'Shipyard\n$localWaypointSymbol',
//                 ),
//                 const SizedBox(
//                   width: Spacing.medium,
//                 )
//               ],
//             ),
//         ],
//       ),
//     );
//   }
// }
