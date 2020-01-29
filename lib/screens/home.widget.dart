import 'package:flutter/material.dart';
import 'package:liming_calculation/tabs/calculate.tab.dart';
import 'package:liming_calculation/tabs/formulas.tab.dart';
import 'package:liming_calculation/tabs/home.tab.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1D5D51),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.exposure),
                ),
                Tab(
                  icon: Icon(Icons.note),
                )
              ],
            ),
            title: Text(
              "Cálculo de Calagem",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HomeTab(),
              Calculate(),
              Formulas(),
            ],
          ),
        ),
      ),
    );
  }
}
