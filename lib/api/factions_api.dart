import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/faction.dart';

class FactionsApi {
  Future<(int, List<Faction>)> listFactions() async {
    Response response = await dio.get('/factions');
    return (
      response.statusCode!,
      List.from(response.data['data'].map((x) => Faction.fromJson(x)))
          as List<Faction>
    );
  }

  Future<(int, Faction)> getFaction(String factionSymbol) async {
    Response response = await dio.get('/factions/$factionSymbol');
    return (response.statusCode!, Faction.fromJson(response.data['data']));
  }
}
