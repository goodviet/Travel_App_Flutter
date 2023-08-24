import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

  // Widget _buidlImageHomScreen(String name, String image) {
  //   return GestureDetector(
  //     onTap: () {
  //       Navigator.of(context)
  //           .pushNamed(HotelBookingScreen.routeName, arguments: name);
  //     },
  //     child: Container(
  //       // margin: EdgeInsets.only(bottom: kDefaultPadding),
  //       margin: EdgeInsets.symmetric(horizontal: 10),
  //       child: Stack(
  //         alignment: Alignment.topRight,
  //         children: [
  //           ImageHelper.loadFromAsset(
  //             image,
  //             width: 170,
  //             height: 200,
  //             // width: double.infinity,
  //             fit: BoxFit.fitWidth,
  //             radius: BorderRadius.circular(kItemPadding),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(kDefaultPadding),
  //             child: Icon(
  //               Icons.favorite,
  //               color: Colors.red,
  //             ),
  //           ),
  //           Positioned(
  //             left: kDefaultPadding,
  //             bottom: kDefaultPadding,
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   name,
  //                   style: TextStyles.defaultStyle.whiteTextColor.bold,
  //                 ),
  //                 SizedBox(
  //                   height: kItemPadding,
  //                 ),
  //                 Container(
  //                   padding: EdgeInsets.all(kMinPadding),
  //                   decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(kMinPadding),
  //                     color: Colors.white.withOpacity(0.4),
  //                   ),
  //                   child: Row(
  //                     mainAxisSize: MainAxisSize.min,
  //                     children: const [
  //                       Icon(
  //                         Icons.star,
  //                         color: Color(0xffFFC107),
  //                       ),
  //                       SizedBox(
  //                         width: kItemPadding,
  //                       ),
  //                       Text('4.5')
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }