import 'package:app/src/models/bb_model.dart';
import 'package:flutter/material.dart';

class PersonajePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BbModel bbpej = ModalRoute.of(context)!.settings.arguments as BbModel;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          bbpej.name,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow[300],
      ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          children: <Widget>[_imageCard(bbpej), _infoCard(bbpej)]),
    );
  }

  Widget _imageCard(bbpej) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [Image(image: NetworkImage(bbpej.img))],
      ),
    );
  }

  _infoCard(bbpej) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            "APODO:",
            textAlign: TextAlign.right,
          ),
          Text(bbpej.nickname),
          Divider(),
          Text(
            "FECHA DE NACIMIENTO:",
            textAlign: TextAlign.right,
          ),
          Text(bbpej.birthday),
          Divider(),
          Text(
            "OCUPACIONES:",
            textAlign: TextAlign.right,
          ),
          Text(bbpej.occupation.toString()),
          Divider(),
          Text(
            "ESTADO:",
            textAlign: TextAlign.right,
          ),
          Text(bbpej.status),
          Divider(),
          Text(
            "ACTOR:",
            textAlign: TextAlign.right,
          ),
          Text(bbpej.actor),
          Divider(),
          Text(
            "TEMPORADAS:",
            textAlign: TextAlign.right,
          ),
          Text(bbpej.tempo.toString()),
          Divider(),
        ],
      ),
    );
  }
}
