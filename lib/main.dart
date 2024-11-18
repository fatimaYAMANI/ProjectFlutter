import 'package:application/home.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
        displayLarge:TextStyle(fontSize: 35,color: Color(0xFF00ADB5)),
        bodySmall:TextStyle(fontSize: 35,color: Colors.black)),

        colorScheme: ColorScheme.fromSeed(seedColor:Colors.purple,primary: Color(0xFF222831),
),
        indicatorColor:Colors.indigo), 
    
      home: HomePage(),
    );
  }
}
