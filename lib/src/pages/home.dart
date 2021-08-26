import 'package:app/src/models/bb_model.dart';
import 'package:app/src/pages/search_page.dart';
import 'package:app/src/provider/provider_bb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final providerBb = ProviderBb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        centerTitle: true,
        title: Text('Breaking Bad Wiki'),
        backgroundColor: Colors.orange[400],
        actions: [
          IconButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/search');
              },
              icon: Icon(Icons.search)),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7, vertical: 0))
        ],
      ),
      body: FutureBuilder(
        future: providerBb.obtenerPj(),
        builder: (BuildContext context, AsyncSnapshot<List<BbModel>> snapShot) {
          final bbdata = snapShot.data;
          if (snapShot.hasData) {
            //print("Hay info!");
            return ListView.builder(
                itemCount: bbdata!.length,
                itemBuilder: (BuildContext context, int i) {
                  final bbpej = bbdata[i];
                  return _DisenoBB(bbpej);
                  //return Text(bbpej.name);
                });
          } else {
            //print("No info");
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class _DisenoBB extends StatelessWidget {
  final BbModel bbpej;
  _DisenoBB(this.bbpej);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.00)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
              title: Text(bbpej.name),
              subtitle: Text(bbpej.nickname),
              trailing: Icon(Icons.visibility),
              leading: CircleAvatar(backgroundImage: NetworkImage(bbpej.img)),
              onTap: () {
                Navigator.pushNamed(context, '/personaje', arguments: bbpej);
              },
              tileColor: Colors.yellow[200])
        ],
      ),
    );
  }
}
