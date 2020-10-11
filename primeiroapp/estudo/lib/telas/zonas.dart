import 'package:admob_flutter/admob_flutter.dart';
import 'package:estudo/utils/textos.dart';
import 'package:flutter/material.dart';

import '../admob/ad_guia.dart';

class Zonas extends StatefulWidget {
  @override
  _ZonasState createState() => _ZonasState();
}

class _ZonasState extends State<Zonas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Suporte e ressistência",
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
              child: Text(suporte, style: TextStyle(color: Colors.black)),
            ),
            Image.asset('lib/assets/suporte.png'),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(ressistencia, style: TextStyle(color: Colors.black)),
            ),
            Image.asset('lib/assets/ressistencia.png'),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(linhas_de_tedencia,
                  style: TextStyle(color: Colors.black)),
            ),
            Image.asset(
              'lib/assets/introducao_dois.png',
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
