import 'package:app/src/models/bb_model.dart';
import 'package:dio/dio.dart';

class ProviderBb {
  final _url = "https://breakingbadapi.com/api/characters";
  final _http = Dio();

  Future<List<BbModel>> obtenerPj() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data;
    //print(data);
    final resultado =
        data.map((character) => BbModel.obtenerInstancia(character)).toList();
    //print(resultado);
    return resultado;
  }
}
