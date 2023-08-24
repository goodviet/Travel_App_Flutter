
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget(
      {Key? key,
      required this.child,
      this.title,
      this.implementLeading = false,
      this.implementTraling = false,
      this.titlestring,
      this.subTitleString,
      this.paddingContent})
      : super(key: key);

  final Widget child;
  final Widget? title;
  final String? titlestring;
  final String? subTitleString;
  final bool implementLeading;
  final bool implementTraling;
  final EdgeInsets? paddingContent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 185,
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              elevation: 0,
              toolbarHeight: 90,
              backgroundColor: ColorsPalette.backgroundScaffoldColor,
              title: title ??
                  Row(
                    children: [
                      if (implementLeading)
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                kDefaultPadding,
                              ),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(kItemPadding),
                            child: Icon(
                              FontAwesomeIcons.arrowLeft,
                              size: kDefaultPadding,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                titlestring ?? '',
                              ),
                              if (subTitleString != null)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: kMediumPadding),
                                  child: Text(
                                    subTitleString!,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (implementTraling)
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kDefaultPadding),
                              color: Colors.white),
                          padding: EdgeInsets.all(kItemPadding),
                          child: Icon(
                            FontAwesomeIcons.bars,
                            size: kDefaultIconSize,
                            color: Colors.black,
                          ),
                        )
                    ],
                  ),
              flexibleSpace: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // gradient: Gradients.defaultGradientBackground,
                      color: ColorsPalette.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 156),
            padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: child,
          )
        ],
      ),
    );
  }
}
