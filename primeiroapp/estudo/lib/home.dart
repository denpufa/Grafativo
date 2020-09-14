import 'package:estudo/ad_guia.dart';
import 'package:estudo/ajuda.dart';
import 'package:estudo/congestao.dart';
import 'package:estudo/padroescandle.dart';
import 'package:estudo/reversao.dart';
import 'package:estudo/introducao.dart';
import 'package:estudo/zonas.dart';
import 'package:flutter/material.dart';
import 'continuidade.dart';
import 'ad_guia.dart';

import 'package:admob_flutter/admob_flutter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Introducao()));
                },
                child: Text(
                  "Introdução a análise",
                  style: TextStyle(color: Colors.black),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Zonas()));
                },
                child: Text(
                  "Suporte e ressistência",
                  style: TextStyle(color: Colors.black),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Reversao()));
                },
                child: Text(
                  "Figuras de reversão",
                  style: TextStyle(color: Colors.black),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Continuidade()));
                },
                child: Text(
                  "Figuras de continuidade",
                  style: TextStyle(color: Colors.black),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PadroesCandle()));
                },
                child: Text(
                  "Padrôes de candle",
                  style: TextStyle(color: Colors.black),
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Congestao()));
                },
                child: Text(
                  "Congestão e novas tendências",
                  style: TextStyle(color: Colors.black),
                )),
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Ajuda()));
        },
        child: Icon(
          Icons.help,
          color: Colors.black,
        ),
        backgroundColor: Colors.greenAccent,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
