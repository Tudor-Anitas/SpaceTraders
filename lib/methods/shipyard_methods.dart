import 'package:space_traders/models/ship.dart';

List<String> getSystemsFromShips(List<Ship> ships) {
  List<String> systemSymbols = [];
  for (var ship in ships) {
    if (!systemSymbols.contains(ship.nav.systemSymbol) &&
        ship.nav.systemSymbol.isNotEmpty) {
      systemSymbols.add(ship.nav.systemSymbol);
    }
  }

  return systemSymbols;
}
