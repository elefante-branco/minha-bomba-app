import 'package:minha_bomba/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Minha Bomba',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Color.fromARGB(255, 4, 125, 141)
    ),
    home: HomeMinhaBomba(),
    debugShowCheckedModeBanner: false,
  ));
}