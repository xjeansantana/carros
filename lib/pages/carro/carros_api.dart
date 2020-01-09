import 'package:carros/pages/carro/carro.dart';

class CarrosApi {
  static Future<List<Carro>> getCarros() async{
    final carros = List<Carro>();

   await Future.delayed(Duration(seconds: 2));

    carros.add(Carro(nome: "Ferrari FF", urlFoto: "http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png"));
    carros.add(Carro(nome: "Porsche Panamera", urlFoto: "http://www.livroandroid.com.br/livro/carros/esportivos/Porsche_Panamera.png"));
    carros.add(Carro(nome: "Chevrolet Corvette Z06", urlFoto: "http://www.livroandroid.com.br/livro/carros/esportivos/Chevrolet_Corvette_Z06.png"));

    return carros;
  }
}
