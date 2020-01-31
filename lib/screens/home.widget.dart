import 'package:flutter/material.dart';
import 'package:liming_calculation/tabs/about.tab.dart';
import 'package:liming_calculation/tabs/calculate.tab.dart';
import 'package:liming_calculation/tabs/formulas.tab.dart';

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
                  child: Text(
                    "Sobre",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  child: Text(
                    "Cálculo",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Tab(
                  child: Text(
                    "Fórmulas",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
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
              AboutTab(),
              Calculate(),
              Formulas(),
            ],
          ),
        ),
      ),
    );
  }
}
