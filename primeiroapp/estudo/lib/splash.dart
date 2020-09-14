import 'dart:async';

import 'package:estudo/home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double porcentagem = 0.25;

  @override
  void initState() {
    Timer.periodic(
        Duration(seconds: 1),
        (Timer a) => setState(() {
              if (porcentagem == 1) {
                a.cancel();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(
                              title: "Análise gráfica de ativos",
                            )));
              } else {
                porcentagem += 0.25;
              }
            }));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Image.asset(
                "lib/assets/inicio.png",
                scale: 1,
              ),
              Padding(padding: EdgeInsets.only(top: 50.0)),
              CircularProgressIndicator(
                valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.greenAccent[100]),
                backgroundColor: Colors.white,
                value: porcentagem,
                strokeWidth: 10,
              )
            ])));
  }
}
