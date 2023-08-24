import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/data/diadiem_model.dart';
import 'package:travel_app/data/hotel_model.dart';
import 'package:travel_app/data/khampha_model.dart';
import 'package:travel_app/representation/form/row_item.dart';
import 'package:travel_app/representation/form/row_kp.dart';

import 'package:travel_app/representation/screen/discover_screen.dart';
import 'package:travel_app/representation/screen/food_screen.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';

class ItemKhampha extends StatelessWidget {
  const ItemKhampha({
    super.key,
    required this.khamPhaModel,
  });
  final KhamPhaModel khamPhaModel;

  @override
  Widget build(BuildContext context) {
    Color _iconColor = Colors.white;
    bool isPressed = false;
    void _gotoDetailsPage(
      BuildContext context,
    ) {
      Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (
          BuildContext context,
        ) =>
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(khamPhaModel.kpImage),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: EdgeInsets.all(kMinPadding),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.blue,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationDot,
                          size: 30,
                          color: Colors.grey,
                        ),
                        Text(
                          khamPhaModel.kpName,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(FontAwesomeIcons.heart),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(FontAwesomeIcons.bookmark),

                        //     InkWell(
                        //   onTap: () {
                        //     setState(() {
                        //       isPressed = !isPressed;
                        //     });
                        //   },
                        //   child: Icon(
                        //     Icons.favorite,
                        //     color: isPressed
                        //         ? Colors.red
                        //         : Colors
                        //             .grey, // Thay đổi màu sắc của Icon dựa trên biến isPressed
                        //     size: 25,
                        //   ),
                        // )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            khamPhaModel.kpName,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Divider(
                        height: 10,
                        color: Colors.blue,
                        thickness: 2.5,
                        endIndent: 200,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "${khamPhaModel.kplike}",
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'lượt thích',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.comment, size: 20, color: Colors.blue),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                "${khamPhaModel.kpcomment}",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'phản hồi',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        khamPhaModel.thumNail,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     RowKp(
                      //         onTap: () {
                      //           Navigator.of(context)
                      //               .pushNamed(PopularScreen.routeName);
                      //         },
                      //         color: ColorsPalette.primaryColor,
                      //         icon: FontAwesomeIcons.locationDot,
                      //         colorIc: Colors.white),
                      //     RowKp(
                      //         onTap: () {
                      //           Navigator.of(context)
                      //               .pushNamed(PopularScreen.routeName);
                      //         },
                      //         color: Colors.red,
                      //         icon: FontAwesomeIcons.clock,
                      //         colorIc: Colors.white)
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     RowKp(
                      //         onTap: () {},
                      //         color: Colors.orange,
                      //         icon: FontAwesomeIcons.calendar,
                      //         colorIc: Colors.white),
                      //     RowKp(
                      //         onTap: () {},
                      //         color: Colors.black,
                      //         icon: Icons.restaurant,
                      //         colorIc: Colors.white)
                      //   ],
                      // )
                      ButtomWidget(
                        title: 'Lên lịch tham quan',
                        ontap: () {
                          // Navigator.of(context).pushNamed(HotelScreen.routeName);
                          Navigator.of(context).pushNamed(
                              HotelBookingScreen.routeName,
                              arguments: khamPhaModel.kpName);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ));
    }

    return GestureDetector(
      onTap: () => _gotoDetailsPage(
        context,
      ),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.only(bottom: kMediumPadding),
        child: Row(
          children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                width: 180,
                child: ImageHelper.loadFromAsset(khamPhaModel.kpImage)),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  khamPhaModel.kpName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(khamPhaModel.kpocation),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.heart,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text("${khamPhaModel.kplike}")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.comment),
                        SizedBox(
                          width: 2,
                        ),
                        Text("${khamPhaModel.kpcomment}")
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
