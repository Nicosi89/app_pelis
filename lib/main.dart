import 'package:app_pelis/controllers/controller_descubre_pelis.dart';
import 'package:app_pelis/pantallas/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final controllerNovedades = ControllerNovedadesPelis();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: HomeScreen(controllerNovedadesPelis: controllerNovedades),
      )

    );
  }
}


