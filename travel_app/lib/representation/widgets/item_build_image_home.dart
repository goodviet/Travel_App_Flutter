import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/data/build_model.dart';
import 'package:travel_app/representation/screen/discover_screen.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';

import '../../core/constants/dismention_constants.dart';
import '../../core/helpers/image_helper.dart';
import '../screen/hotel_screen.dart';

class BuiImageHomeScreen extends StatelessWidget {
  const BuiImageHomeScreen({
    Key? key,
    required this.buildModel,
  }) : super(key: key);

  final BuildModel buildModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/hotel_booking_screen',
            arguments: buildModel.name);

      },
      child: Container(
        // margin: EdgeInsets.only(bottom: kDefaultPadding),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ImageHelper.loadFromAsset(
              buildModel.image,
              width: 200,
              height: 240,
              // width: double.infinity,
              fit: BoxFit.fitWidth,
              radius: BorderRadius.circular(kItemPadding),
            ),
            // Image(
            //   image: NetworkImage(buildModel.image),

            // ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                padding: EdgeInsets.all(kMinPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: kItemPadding,
                    ),
                    Text(
                      buildModel.like,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                    // style: TextStyle(color: Colors.white),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(kDefaultPadding),
            //   child: Icon(
            //     Icons.favorite,
            //     color: Colors.white,
            //   ),
            // ),
            Positioned(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(buildModel.name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)
                      // style: TextStyles.defaultStyle.whiteTextColor.bold,
                      ),
                  SizedBox(
                    height: kItemPadding,
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(kMinPadding),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(kMinPadding),
                  //     color: Colors.white.withOpacity(0.4),
                  //   ),
                  // child: Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: const [
                  //     Icon(
                  //       Icons.star,
                  //       color: Color(0xffFFC107),
                  //     ),
                  //     SizedBox(
                  //       width: kItemPadding,
                  //     ),
                  //     Text('4.5')
                  //   ],
                  // ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
