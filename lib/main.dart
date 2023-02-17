import 'package:flutter/material.dart';
import 'package:weather_app/screens/Details.dart';
import 'package:weather_app/screens/cities.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const CitiesScreen(),
      '/details': (context) => const Details(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CitiesScreen();
  }
}
