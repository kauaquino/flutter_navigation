import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/firstpage.dart';
import 'package:flutter_navigation/screens/secondpage.dart';
import 'package:flutter_navigation/screens/thirdpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Rotas',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FirstPage(),
        routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => FirstPage(),
          "/2": (BuildContext context) => SecondPage(),
          "/3": (BuildContext context) => ThirdPage(),
        });
  }
}
