import 'package:flutter/material.dart';

import 'detail_bar.dart';

class DetailBanner extends StatelessWidget {
  final DetailBar detailBar;
  const DetailBanner({
    Key? key,
    required this.detailBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
            image: AssetImage(detailBar.thumbnaiURL), fit: BoxFit.cover),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 49.0),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(''.toUpperCase()),
                  Container(
                    width: 200,
                    child: Text(
                      detailBar.tiltle.toUpperCase(),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
