import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';

class RowKp extends StatelessWidget {
  const RowKp(
      {super.key,
      required this.color,
      required this.icon,
      required this.colorIc,
      this.onTap,
      });

  final Color color;
  final IconData icon;
  final Color colorIc;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 120,
          width: 170,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10)),
          child:  Icon(
                icon,
                color: colorIc,
                size: 35,
              ),),
    );
  }
}
