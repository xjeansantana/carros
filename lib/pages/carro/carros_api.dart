import 'dart:convert' as convert;

import 'package:carros/pages/carro/carro.dart';
import 'package:http/http.dart' as http;

/*enum TipoCarro {
  classicos,
  esportivos,
  luxo
}*/

class TipoCarro {
  static final String classicos = "classicos";
  static final String esportivos = "esportivos";
  static final String luxo = "luxo";
}

class CarrosApi {
  static Future<List<Carro>> getCarros(String tipo) async {
    //String tipoDeCarro = tipo.toString().replaceAll("TipoCarro.", "");

    var url =
        'https://carros-springboot.herokuapp.com/api/v1/carros/tipo/$tipo';

    var response = await http.get(url);

    String json = response.body;

    List list = convert.json.decode(json);

    return list.map<Carro>((map) => Carro.fromJson(map)).toList();
  }
}
