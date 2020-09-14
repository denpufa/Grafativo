import 'package:admob_flutter/admob_flutter.dart';
import 'package:estudo/ad_guia.dart';
import 'package:estudo/splash.dart';
import 'package:flutter/material.dart';

void main() {
  Admob.initialize(AdGuia.appId);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aplicativo de análise grafica',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Splash());
  }
}
