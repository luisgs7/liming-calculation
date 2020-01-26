import 'package:flutter/material.dart';
import 'package:liming_calculation/screens/home.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cálculo de Calagem',
      theme: ThemeData(
        primaryColor: Color(0xFF1D5D51),
      ),
      home: Home(),
    );
  }
}
