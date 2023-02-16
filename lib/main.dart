import 'package:flutter/material.dart';
import 'package:weather_app/screens/cities.dart';


void main() {
  runApp(const MaterialApp(
    home: MyApp()
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CitiesScreen();
  }
}