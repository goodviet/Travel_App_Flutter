import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/constants/textstyle_constants.dart';

class ButtonTwo extends StatelessWidget {
  const ButtonTwo({Key? key, required this.title, this.ontap})
      : super(key: key);

  final String title;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kMediumPadding),
          gradient: GradientsTwo.defaultGradientBackground,
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyles.defaultStyle.bold.whiteTextColor,
        ),
      ),
    );
  }
}
