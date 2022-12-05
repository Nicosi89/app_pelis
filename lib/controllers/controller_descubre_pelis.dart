import 'dart:convert';

import '../models/model_pelis_novedades.dart';
import '../servicios/api_ultimas_pelis.dart';

class ControllerNovedadesPelis {

  ControllerNovedadesPelis();

  ApiNovedadesPelis apiNovedades = ApiNovedadesPelis();
  late NovedadesPelisModel RespuestaNovedades;
  List<Results> listResultadosNovedades = [];

  Future<List<Results>> getDataNovedades() async {
    final responseJson = await apiNovedades.getPelisNovedades();

    //método que convierte el string en objeto json
    final Map<String, dynamic> decodedCliente =
        jsonDecode(responseJson.toString());

    print('El decodedCliente es: $decodedCliente');

    if (decodedCliente != null) {
      //se convierte el objeto json en un modelo y se guarda e variable
      RespuestaNovedades = NovedadesPelisModel.fromJson(decodedCliente);
      print('Modelo: $RespuestaNovedades');

      listResultadosNovedades.addAll(RespuestaNovedades.results!);

      return listResultadosNovedades;
    } else {
      return [];
    }
  }
}
