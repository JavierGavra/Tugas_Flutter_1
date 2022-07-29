import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff5f5f5),
      ),
      home: HomeScreen(hasil: 0),
    );
  }
}
