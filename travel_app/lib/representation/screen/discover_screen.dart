import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/data/khampha_model.dart';
import 'package:travel_app/data/place_model.dart';
import 'package:travel_app/representation/screen/plane_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/item_discover_widget.dart';
import 'package:collection/collection.dart';
import 'package:travel_app/representation/widgets/item_khampha.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});
  static const String routeName = '/discover_screen';

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    // return AppBarContainerWidget(
    //     child: Scaffold(
    //   body: SingleChildScrollView(
    //     child: Column(
    //       children:
    //           listKhamPha.map((e) => ItemKhampha(khamPhaModel: e)).toList(),
    //     ),
    //   ),
    // ));

    return Scaffold(
      appBar: AppBar(
        title: Text("Khám Phá Các Địa Điểm"),
        toolbarHeight: 90,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
        )),
        backgroundColor: ColorsPalette.primaryColor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              listKhamPha.map((e) => ItemKhampha(khamPhaModel: e)).toList(),
        ),
      ),
    );
  }
}
