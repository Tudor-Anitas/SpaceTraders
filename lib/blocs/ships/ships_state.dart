import 'package:equatable/equatable.dart';
import 'package:space_traders/models/ship.dart';

class ShipsState extends Equatable {
  final int pageIndex;
  final List<Ship> ships;

  const ShipsState({required this.pageIndex, required this.ships});

  @override
  List<Object?> get props => [pageIndex, ships];

  ShipsState copyWith({int? pageIndex, List<Ship>? ships}) {
    return ShipsState(
        pageIndex: pageIndex ?? this.pageIndex, ships: ships ?? this.ships);
  }
}
