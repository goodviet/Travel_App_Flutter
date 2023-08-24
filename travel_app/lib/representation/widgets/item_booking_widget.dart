import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';

class ItemBookingWidget extends StatelessWidget {
  const ItemBookingWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    this.onTap, required this.color,
  }) : super(key: key);
  final String icon;
  final String title;
  final String description;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(kItemPadding),
            )),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 30,
              height: 30,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                SizedBox(
                  height: kMinPadding,
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
