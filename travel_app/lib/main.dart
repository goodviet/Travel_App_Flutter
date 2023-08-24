import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/helpers/local_storage_helper.dart';
import 'package:travel_app/data/MongoDB/mongodb.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/screen/intro_screen.dart';
import 'package:travel_app/representation/screen/main_app.dart';
import 'package:travel_app/representation/screen/signin_screen.dart';
import 'package:travel_app/representation/screen/splash_screen.dart';
import 'package:travel_app/routes.dart';

import 'representation/screen/diadiem_phuhop_screen.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  await LocalStorageHelper.initLocalStorageHelper();

  runApp(MyApp(
    token: prefs.getString('token'),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.token}) : super(key: key);
  final token;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Travel App",
        theme: ThemeData(
            primaryColor: ColorsPalette.primaryColor,
            backgroundColor: ColorsPalette.backgroundScaffoldColor,
            scaffoldBackgroundColor: ColorsPalette.backgroundScaffoldColor),
        routes: routes,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: generateRoutes,
        home: SplashScreen());
    //     home:
    // (token != null && JwtDecoder.isExpired(token) == false)
    //     ? MainApp()
    //     : SiginScreen());
  }
}
