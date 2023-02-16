import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CitiesScreen extends StatefulWidget {
  const CitiesScreen({super.key});



  @override
  State<CitiesScreen> createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
  void printText(String text) {
    print('$text');
  }

    final myController = TextEditingController();

  void getHttp(String city) async {
    try {
      var response = await Dio().get(
          'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=665b5a3342ce18418ac2dc565903a417');
      print(response.data['name']);
      print(response.data['weather'][0]['main']);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(children: <Widget>[
          Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter a city'),
                style: TextStyle(fontSize: 18.0),
                controller: myController,
              )),
          Container(
              margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('Search'),
                    onPressed: () {
                      getHttp(myController.text);
                      // print('${myController.text}');
                      myController.text = "";
                    },
                  ))),
        ]),
      )),
    );;
  }
}