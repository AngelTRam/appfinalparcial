import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.search, color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: TextField(
            autofocus: true,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)))),
      ),
    );
  }
}
