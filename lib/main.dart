import 'package:flutter/material.dart';
import 'package:flutter_google_ad_manager/ad_size.dart';
import 'package:flutter_google_ad_manager/banner.dart';
import 'package:flutter_google_ad_manager/flutter_google_ad_manager.dart';

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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DFPBanner(
              isDevelop: false,
              adUnitId: '/96551095/Yallakora_APP/Yallakora_App_HP_SC1',
              adSize: DFPAdSize.BANNER,
              testDevices: MyTestDevices(),
              onAdLoaded: ()  {
                print('Banner onAdLoaded');
              },
              onAdFailedToLoad: (errorCode) {
                print('Banner onAdFailedToLoad: errorCode:$errorCode');
              },
              onAdOpened: () {
                print('Banner onAdOpened');
              },
              onAdClosed: () {
                print('Banner onAdClosed');
              },
              onAdLeftApplication: () {
                print('Banner onAdLeftApplication');
              },
            ),
          ],
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
class MyTestDevices extends TestDevices {
  static MyTestDevices _instance;

  factory MyTestDevices() {
    if (_instance == null) _instance = MyTestDevices._internal();
    return _instance;
  }

  MyTestDevices._internal();

  @override
  List<String> get values => List()..add("");
  // Use AdRequest.Builder.addTestDevice("66A234E7398C8D401744F0137499F8C2") to get test ads on this device
}