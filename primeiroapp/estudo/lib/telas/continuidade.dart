import 'package:admob_flutter/admob_flutter.dart';
import 'package:estudo/utils/textos.dart';
import 'package:flutter/material.dart';

import '../admob/ad_guia.dart';

class Continuidade extends StatefulWidget {
  @override
  _ContinuidadeState createState() => _ContinuidadeState();
}

class _ContinuidadeState extends State<Continuidade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Figuras de continuidade",
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
                child: Text(figuras_continuidade,
                    style: TextStyle(color: Colors.black))),
            Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                child: Text(canal_alta, style: TextStyle(color: Colors.black))),
            RotatedBox(
                quarterTurns: -1,
                child: Image.asset(
                  'lib/assets/canal_alta.png',
                  scale: 1.7,
                )),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                child:
                    Text(canal_baixa, style: TextStyle(color: Colors.black))),
            Image.asset(
              'lib/assets/canal_baixa.png',
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
                    Text(flamula_alta, style: TextStyle(color: Colors.black))),
            Image.asset(
              'lib/assets/flamula_alta.png',
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
                child: Text(bandeira_baixa,
                    style: TextStyle(color: Colors.black))),
            Image.asset(
              'lib/assets/bandeira_baixa.png',
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
