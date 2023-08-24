import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/data/place_model.dart';

import '../../core/helpers/image_helper.dart';

class PlaneScreen extends StatelessWidget {
  final PlaceModel placeModel;
  PlaneScreen(this.placeModel);
  // final List<Map<String, dynamic>> listPlaace = [
  //   {
  //     "employees": [
  //       {"name": "John", "age": 25},
  //       {"name": "Anna", "age": 29}
  //     ]
  //   }
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageHelper.loadFromAsset(placeModel.placeImage),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(placeModel.placeName),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                placeModel.placeawayKilometer.toString(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
