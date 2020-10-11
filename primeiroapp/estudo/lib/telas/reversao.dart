import 'package:admob_flutter/admob_flutter.dart';
import 'package:estudo/utils/textos.dart';
import 'package:flutter/material.dart';

import '../admob/ad_guia.dart';

class Reversao extends StatefulWidget {
  @override
  _ReversaoState createState() => _ReversaoState();
}

class _ReversaoState extends State<Reversao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: Text(
          "Figuras de reversão",
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
                  Text(reversao_inicio, style: TextStyle(color: Colors.black)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(topo_duplo, style: TextStyle(color: Colors.black)),
            ),
            Image.asset('lib/assets/topo_duplo.png'),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(fundo_duplo, style: TextStyle(color: Colors.black)),
            ),
            Image.asset('lib/assets/fundo_duplo.png'),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(ombroco, style: TextStyle(color: Colors.black)),
            ),
            Image.asset('lib/assets/ombroco.png'),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: AdmobBanner(
                  adUnitId: AdGuia.bannerId,
                  adSize: AdmobBannerSize.BANNER,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: Text(ombroco_invertido,
                  style: TextStyle(color: Colors.black)),
            ),
            Image.asset('lib/assets/ombroco_invertido.png'),
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
