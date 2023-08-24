import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../core/helpers/asset_helper.dart';
import '../../core/helpers/image_helper.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {super.key,
      required this.tltle,
      required this.subTitle,
      required this.image});
  final String tltle, subTitle, image;

  @override
  Widget build(BuildContext context) {
    final String title = "Tai Khoan";
    final String subTitle = "Để có một trãi nghiệm tốt";
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(title,
            style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        Text(subTitle, style: TextStyle(fontSize: 16, color: Colors.black))
      ],
    );
  }
}
