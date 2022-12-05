import 'constantes.dart';
import 'package:http/http.dart' as http;


class ApiNovedadesPelis {
  Future getPelisNovedades() async {

    final uri = Uri.parse('${ServiceConstants.URLBASE}${ServiceConstants.URLTRENDING}');

    print('Esta es la URL $uri');
    try {
      final response = await
      http.get(uri);

      if (response.statusCode == 200){
        print('Esta es la respuesta ${response.body}');
        return response.body;
      } else {
        print(response);
        throw Exception('No se ha recibido la respuesta con éxito');

      }


    } catch (error) {
      print(error);
    }
  }
}
