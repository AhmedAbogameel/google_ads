import 'package:flutter/material.dart';
import 'package:flutter_google_ad_manager/ad_size.dart';
import 'package:flutter_google_ad_manager/banner.dart';
import 'package:flutter_google_ad_manager/flutter_google_ad_manager.dart';

import 'banner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> adUnitsId = [
    '/96551095/Yallakora_APP/Yallakora_App_HP_SC1',
    '/96551095/V2_Masrawy_APP/V2_Masrawy_APP_HP_Sponsor',
    '/96551095/V2_Masrawy_APP/V2_Masrawy_APP_HP_Interstitial',
    '/96551095/V2_Masrawy_APP/V2_Masrawy_APP_HP_LB1',
    '/96551095/V2_Masrawy_APP/V2_Masrawy_APP_HP_sc1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ######## NOTE ########
          // AdBanner is a custom widget made by me
          // What is here to convert every string in our list to a widget called AdBanner and adUnitId is an element from list called adUnitsId
          children: adUnitsId.map((adUnitId) => AdBanner(adUnitId)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
