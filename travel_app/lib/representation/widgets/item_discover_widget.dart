import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/data/place_model.dart';

import 'package:travel_app/representation/screen/hotel_screen.dart';

import 'button_two.dart';

class ItemDiscoverWidget extends StatelessWidget {
  const ItemDiscoverWidget({super.key, required this.placeModel});
  final PlaceModel placeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding),
          color: Colors.white),
      margin: EdgeInsets.only(bottom: kMediumPadding),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(right: kDefaultPadding),
              child: ImageHelper.loadFromAsset(placeModel.placeImage,
                  radius: BorderRadius.only(
                      topLeft: Radius.circular(kDefaultPadding),
                      topRight: Radius.circular(kDefaultPadding)))),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  placeModel.placeName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoLocation),
                    SizedBox(
                      width: kMediumPadding,
                    ),
                    Text(placeModel.placelocation),
                    ElevatedButton(
                      onPressed: (() {
                      
                        
                      }),
                      child: const Text(
                        "Chi tiet",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide.none,
                          shape: const StadiumBorder()),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
