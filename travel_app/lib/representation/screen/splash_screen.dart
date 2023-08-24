import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/screen/intro_screen.dart';
import 'package:travel_app/representation/screen/main_app.dart';

import '../../core/helpers/asset_helper.dart';
import '../../core/helpers/local_storage_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key,}) : super(key: key);
  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async {
    final ignoreIntroScreen =
        LocalStorageHelper.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(Duration(seconds: 4));
    if (ignoreIntroScreen != null && ignoreIntroScreen) {
      // Navigator.of(context).pushNamed(MainApp.routeName);
      LocalStorageHelper.setValue('ignoreIntroScreen', true);
      Navigator.of(context).pushNamed(IntroScreen.routeName);
    } else {
      // LocalStorageHelper.setValue('ignoreIntroScreen', true);
      // Navigator.of(context).pushNamed(IntroScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Lottie.network(
              'https://assets1.lottiefiles.com/packages/lf20_hu7gcd3w.json'),
        ),
      ),
    );
  }
}
