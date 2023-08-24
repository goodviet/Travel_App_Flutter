import 'package:flutter/material.dart';
import 'package:travel_app/data/build_model.dart';
import 'package:travel_app/representation/form/test.dart';
import 'package:travel_app/representation/page/mongo_log.dart';
import 'package:travel_app/representation/screen/blog_screen.dart';
import 'package:travel_app/representation/screen/dangky_screen.dart';
import 'package:travel_app/representation/screen/diadiem_phuhop_2.dart';
import 'package:travel_app/representation/screen/diadiem_phuhop_screen.dart';

import 'package:travel_app/representation/screen/discover_screen.dart';
import 'package:travel_app/representation/screen/food_screen.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/home_screen.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/screen/hotel_detail_screen.dart';
import 'package:travel_app/representation/screen/hotel_screen.dart';
import 'package:travel_app/representation/screen/intro_screen.dart';
import 'package:travel_app/representation/screen/location_screen.dart';
import 'package:travel_app/representation/screen/main_app.dart';

import 'package:travel_app/representation/screen/plane_screen.dart';
import 'package:travel_app/representation/screen/popular_screen.dart';
import 'package:travel_app/representation/screen/profile_screen.dart';
import 'package:travel_app/representation/screen/search_screen.dart';
import 'package:travel_app/representation/screen/select_date_screen.dart';
import 'package:travel_app/representation/screen/signin_screen.dart';
import 'package:travel_app/representation/screen/social_screen.dart';
import 'package:travel_app/representation/screen/splash_screen.dart';
import 'package:travel_app/representation/widgets/item_discover.dart';

import 'representation/screen/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  HotelScreen.routeName: (context) => const HotelScreen(),
  HotelBookingScreen.routeName: (context) => HotelBookingScreen(),
  SelectDateScreen.routeName: (context) => SelectDateScreen(),
  GuestAndRoomBookingScreen.routeName: (context) => GuestAndRoomBookingScreen(),
  HotelDetailScreen.routeName: (context) => HotelDetailScreen(),
  DiscoverScreen.routeName: (context) => DiscoverScreen(),
  LocationScreen.routeName: (context) => LocationScreen(),
  SearchScreen.routeName: (context) => SearchScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SiginScreen.routeName: (context) => SiginScreen(),
  PopularScreen.routeName: (context) => PopularScreen(),
  FoodScreen.routeName: (context) => FoodScreen(),
  // LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  DiaDiemPhuHop.routeName: (context) => DiaDiemPhuHop(),
  DiaDiemPhuHop2.routeName: (context) => DiaDiemPhuHop2(),
  BlogScreen.routeName: (context) => BlogScreen(),
  
  // SignInDemo.routeName: (context) => SignInDemo()
};
