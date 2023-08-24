import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RowItem extends StatelessWidget {
  const RowItem({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        IconButton(onPressed: onTap, icon: Icon(FontAwesomeIcons.arrowRight))
      ],
    );
  }
}
