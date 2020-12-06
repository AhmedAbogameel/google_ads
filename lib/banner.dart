import 'package:flutter_google_ad_manager/ad_size.dart';
import 'package:flutter_google_ad_manager/banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_ad_manager/test_devices.dart';

class AdBanner extends StatelessWidget {
  final String adUnitId;
  AdBanner(this.adUnitId);
  @override
  Widget build(BuildContext context) {
    return DFPBanner(
      isDevelop: false,
      adUnitId: adUnitId,
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