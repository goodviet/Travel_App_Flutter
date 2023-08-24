import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/data/khampha_model.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';

class ItemDiscover extends StatelessWidget {
  const ItemDiscover({super.key, required this.khamPhaModel});
  final KhamPhaModel khamPhaModel;
   static const String routeName = '/item_discover';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
