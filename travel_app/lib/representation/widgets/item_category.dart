import 'package:flutter/material.dart';

import '../../core/constants/dismention_constants.dart';

class BuildItemCategory extends StatelessWidget {
  const BuildItemCategory({
    Key? key,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  final Widget icon;
  final Color color;
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: kMediumPadding,
            ),
            child: icon,
            decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(kItemPadding)),
          ),
          SizedBox(
            height: kItemPadding,
          ),
          Text(title)
        ],
      ),
    );
  }
}