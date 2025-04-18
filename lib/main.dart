import 'package:flutter/material.dart';
import './screens/landing.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'CivCart',
      theme:  ThemeData(
        primarySwatch: Colors.teal
      ),
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
