import 'package:admob_flutter/admob_flutter.dart';
import 'package:estudo/utils/textos.dart';
import 'package:flutter/material.dart';

import '../admob/ad_guia.dart';

class PadroesCandle extends StatefulWidget {
  @override
  _PadroesCandleState createState() => _PadroesCandleState();
}

class _PadroesCandleState extends State<PadroesCandle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Padrões de candle",
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
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child:
                  Text(padroes_candle, style: TextStyle(color: Colors.black)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(martelo, style: TextStyle(color: Colors.black)),
            ),
            Image.asset(
              'lib/assets/martelo.png',
              scale: 1.7,
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child:
                  Text(homen_enforcado, style: TextStyle(color: Colors.black)),
            ),
            Image.asset(
              'lib/assets/homen_enforcado.png',
              scale: 1.7,
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
