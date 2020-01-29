import 'package:carros/pages/carro/carro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarroPage extends StatelessWidget {
  Carro carro;

  CarroPage(this.carro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(carro.nome),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.place),
              onPressed: _cnClickMapa,
            ),
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: _cnClickVideo,
            ),
            PopupMenuButton<String>(
              onSelected: (String value) => _onClickPopupMenu(value),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: "Editar",
                    child: Text("Editar"),
                  ),
                  PopupMenuItem(
                    value: "Deletar",
                    child: Text("Deletar"),
                  ),
                  PopupMenuItem(
                    value: "Share",
                    child: Text("Share"),
                  )
                ];
              },
            )
          ],
        ),
        body: _body());
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          Image.network(carro.urlFoto),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(carro.nome, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text(carro.tipo, style: TextStyle(fontSize: 16),)
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.red, size: 40,),
                    onPressed: _cnClickFavorito,
                  ),
                  IconButton(
                    icon: Icon(Icons.share, size: 40,),
                    onPressed: _cnClickShare,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void _cnClickMapa() {}

  void _cnClickVideo() {}

  _onClickPopupMenu(String value) {
    switch (value) {
      case "Editar":
        print("Editar!!!");
        break;
      case "Deletar":
        print("Deletar!!!");
        break;
      case "Share":
        print("Share!!!");
        break;
    }
  }

  void _cnClickFavorito() {
  }

  void _cnClickShare() {
  }
}
