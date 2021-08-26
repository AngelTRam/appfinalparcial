import 'package:app/src/pages/home.dart';
import 'package:app/src/pages/pj_page.dart';
import 'package:app/src/pages/search_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Breaking Bad Wiki',
      home: Home(),
      routes: {
        //'/':(_)=>Home(),
        '/personaje': (_) => PersonajePage(),
        '/search': (_) => SearchPage()
      },
    );
  }
}
