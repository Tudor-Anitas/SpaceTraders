import 'package:dio/dio.dart';
import 'package:space_traders/api/dio.dart';
import 'package:space_traders/models/faction.dart';

class FactionsApi {
  Future<List<Faction>> listFactions() async {
    Response response = await dio.get('/factions');
    return List.from(response.data['data'].map((x) => Faction.fromMap(x)));
  }

  Future<Faction> getFaction(String factionSymbol) async{
    Response response = await dio.get('/factions/$factionSymbol');
    return Faction.fromMap(response.data['data']);
  }
}
