import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/data/hotel_model.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/screen/hotel_detail_screen.dart';
import 'package:travel_app/representation/widgets/button_two.dart';

class ItemHotelWidget extends StatelessWidget {
  const ItemHotelWidget({Key? key, required this.hotelModel}) : super(key: key);

  final HotelModel hotelModel;

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
            child: ImageHelper.loadFromAsset(hotelModel.hotelImage,
                radius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding),
                    bottomRight: Radius.circular(kDefaultPadding))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelModel.hotelName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoLocation),
                    SizedBox(
                      width: kMinPadding,
                    ),
                    Text(hotelModel.location),
                    Expanded(
                      child: Text(
                        '-${hotelModel.awayKilometer} from destination',
                        style: TextStyle(color: ColorsPalette.subTitleColor),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    ImageHelper.loadFromAsset(AssetHelper.icoStar),
                    SizedBox(
                      width: kDefaultPadding,
                    ),
                    Text(hotelModel.star.toString()),
                    Text(
                      '-${hotelModel.numberOfReview} from destination',
                      style: TextStyle(color: ColorsPalette.subTitleColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Text(
                          //   // '\VND${" "}${hotelModel.price} / đêm',
                          //   '',
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                          SizedBox(
                            height: kMinPadding,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ButtonTwo(
                        title: 'Chi tiết',
                        ontap: () {},
                      ),
                    )
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
