import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/data/build_model.dart';
import 'package:travel_app/data/hotel_model.dart';
import 'package:travel_app/data/khampha_model.dart';
import 'package:travel_app/representation/form/row_item.dart';
import 'package:travel_app/representation/screen/blog_screen.dart';
import 'package:travel_app/representation/screen/discover_screen.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/screen/hotel_screen.dart';
import 'package:travel_app/representation/screen/plane_screen.dart';
import 'package:travel_app/representation/screen/popular_screen.dart';
import 'package:travel_app/representation/screen/profile_screen.dart';
import 'package:travel_app/representation/screen/search_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/item_khampha.dart';
import 'package:travel_app/representation/widgets/item_place_widget.dart';

import '../../core/constants/textstyle_constants.dart';
import '../../core/helpers/image_helper.dart';
import '../widgets/item_build_image_home.dart';
import '../widgets/item_hotel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static final String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<KhamPhaModel> listKhamPha = [
    KhamPhaModel(
        kpImage: AssetHelper.hagiang,
        kpName: "Hà Giang",
        kpocation: "Cột cờ Lũng Cú",
        kplike: 20,
        kpcomment: 20,
        thumNail:
            "Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ cao khoảng 1.470 m so với mực nước biển, thuộc xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang, Việt Nam.\n Cột cờ Lũng Cú cách điểm cực Bắc Việt Nam khoảng 3,3 km theo đường chim bay"),
    KhamPhaModel(
        kpImage: AssetHelper.sapa,
        kpName: "SaPa",
        kpocation: "Ruộng bậc thang",
        kplike: 50,
        kpcomment: 100,
        thumNail:
            "https://www.google.com/search?gs_ssp=eJzj4tTP1TcwzzUwTDNg9OLJy8zLUCjJKH24a20eAF2_CNU&q=ninh+thu%E1%BA%ADn&rlz=1C5CHFA_enVN996VN996&oq=ninh+thua&aqs=chrome.1.69i57j46i512j0i512l4j46i175i199i512j0i512l2.3251j0j7&sourceid=chrome&ie=UTF-8#:~:text=%C4%90%C3%A0%20N%E1%BA%B5ng%20642-,km,-v%E1%BB%81%20ph%C3%ADa%20nam"),
    KhamPhaModel(
        kpImage: AssetHelper.ninhthuan,
        kpName: "Ninh Thuận",
        kpocation: "Nông trại dee",
        kplike: 89,
        kpcomment: 86,
        thumNail:
            "Ninh Thuận là một tỉnh ven biển thuộc vùng Duyên hải Nam Trung Bộ, Việt Nam. Thủ phủ của Ninh Thuận là thành phố Phan Rang – Tháp Chàm nằm cách Thành phố Hồ Chí Minh 340 km về phía Bắc, cách thành phố Đà Nẵng 642 km về phía nam, cách thủ đô Hà Nội 1.380 km về phía Nam và cách Nha Trang 100 km theo đường Quốc lộ 1"),
    KhamPhaModel(
        kpImage: AssetHelper.hanoi,
        kpName: "Hà Nội",
        kpocation: "Hồ Gươm",
        kplike: 99,
        kpcomment: 189,
        thumNail:
            "Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ cao khoảng 1.470 m so với mực nước biển, thuộc xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang, Việt Nam. Cột cờ Lũng Cú cách điểm cực Bắc Việt Nam khoảng 3,3 km theo đường chim bay."),
  ];
  final List<BuildModel> listBuildModel = [
    BuildModel(
      name: "Phu Yen",
      image: AssetHelper.phuyen_1,
      like: '40',
    ),
    BuildModel(
      name: "Phu Quy",
      image: AssetHelper.img_1,
      like: '50',
    ),
    BuildModel(
      name: "Da Nang",
      image: AssetHelper.img_3,
      like: '100',
    ),
    BuildModel(
      name: "Hue",
      image: AssetHelper.img_4,
      like: '89',
    ),
    BuildModel(name: "Quy Nhon", image: AssetHelper.quynhon, like: '20'),
    BuildModel(name: "Ha Noi", image: AssetHelper.h_hanoi, like: '20'),
    BuildModel(name: "Can Tho", image: AssetHelper.h_cantho, like: '20'),
    BuildModel(name: "Ha Giang", image: AssetHelper.h_hagiang, like: '20'),
    BuildModel(name: "Nha Trang", image: AssetHelper.h_nhatrang, like: '20'),
    BuildModel(name: "Ca Mau", image: AssetHelper.h_camau, like: '20'),

  ];

  final List<Map<String, String>> listImageLeft = [
    {'name': 'PHU YEN', 'image': AssetHelper.phuyen_1, 'like': '200'},
    {'name': 'PHU QUY', 'image': AssetHelper.img_1, 'like': '200'},
    {'name': 'QUY NHON', 'image': AssetHelper.img_2, 'like': '200'},
    {'name': 'HUE', 'image': AssetHelper.hue, 'like': '200'},
    {'name': 'DA LAT', 'image': AssetHelper.dalat, 'like': '200'},
  ];
  final List<Map<String, String>> listImageRight = [
    {'name': 'DA LAT', 'image': AssetHelper.img_5, 'like': '200'},
    {'name': 'HUE', 'image': AssetHelper.img_4, 'like': '200'},
    {'name': 'DA NANG', 'image': AssetHelper.img_3, 'like': '200'},
    {'name': 'DA LAT', 'image': AssetHelper.dalat, 'like': '200'},
  ];
  List<Map<String, String>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = listImageLeft;

    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, String>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = listImageLeft;
    } else {
      results = listImageLeft
          .where((user) => user["name"]!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  Widget _buiItemImageHomeScreen(String name, String image, String like) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => widget.destination),
        // );

        Navigator.of(context)
            .pushNamed(HotelBookingScreen.routeName, arguments: name);
      },
      child: Container(
        // margin: EdgeInsets.only(bottom: kDefaultPadding),
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            ImageHelper.loadFromAsset(
              image,
              width: 170,
              height: 200,
              // width: double.infinity,
              fit: BoxFit.fitWidth,
              radius: BorderRadius.circular(kItemPadding),
            ),

            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Container(
                padding: EdgeInsets.all(kMinPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.4),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: kItemPadding,
                    ),
                    Text(
                      like,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                    // style: TextStyle(color: Colors.white),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(kDefaultPadding),
            //   child: Icon(
            //     Icons.favorite,
            //     color: Colors.white,
            //   ),
            // ),
            Positioned(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)
                      // style: TextStyles.defaultStyle.whiteTextColor.bold,
                      ),
                  SizedBox(
                    height: kItemPadding,
                  ),
                  // Container(
                  //   padding: EdgeInsets.all(kMinPadding),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(kMinPadding),
                  //     color: Colors.white.withOpacity(0.4),
                  //   ),
                  // child: Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: const [
                  //     Icon(
                  //       Icons.star,
                  //       color: Color(0xffFFC107),
                  //     ),
                  //     SizedBox(
                  //       width: kItemPadding,
                  //     ),
                  //     Text('4.5')
                  //   ],
                  // ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builtItemCatagory(
      Widget icon, Color color, Function() onTap, String tilte) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: kMediumPadding),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(kItemPadding),
            ),
            child: icon,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "ĐI THÔI NÀO ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: kMediumPadding,
                ),
                Text(
                  "Chọn điểm đến và xuất phát thôi",
                  style: TextStyle(
                      fontSize: 15, color: ColorsPalette.dividerColor),
                ),
              ],
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.bell,
              size: kDefaultIconSize,
              color: Colors.white,
            ),
            SizedBox(
              width: kMinPadding,
            ),
            InkWell(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kTopPadding),
                    color: Colors.white),
                child: ImageHelper.loadFromAsset(
                  AssetHelper.acc_1,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ProfileScreen.routeName);
              },
            ),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              onTap: () {
                Navigator.of(context).pushNamed(SearchScreen.routeName);
              },
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                hintText: "Tìm kiếm nơi bạn muốn đến",
                hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Padding(
                  padding: EdgeInsets.all(kTopPadding),
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.black,
                    size: kDefaultIconSize,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(kItemPadding),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: kItemPadding),
              ),
            ),

            // Row(
            //   children: [
            //     Expanded(
            //         child: _builtItemCatagory(
            //       Icon(FontAwesomeIcons.route),
            //       // Color.fromARGB(255, 199, 172, 93),
            //       ColorsPalette.primaryColor,
            //       () {
            //         // Navigator.of(context).pushNamed(HotelScreen.routeName);
            //         Navigator.of(context)
            //             .pushNamed(HotelBookingScreen.routeName);
            //       },
            //       'Hotel',
            //     )),
            //     SizedBox(
            //       width: kDefaultPadding,
            //     ),
            //     Expanded(
            //       child: _builtItemCatagory(Icon(FontAwesomeIcons.plane),
            //           Color.fromARGB(255, 224, 149, 122), () {
            //         Navigator.of(context).pushNamed(PlaneScreen.routeName);
            //       }, 'Plane'),
            //     ),
            //     SizedBox(
            //       width: kDefaultPadding,
            //     ),
            //     Expanded(
            //       child: _builtItemCatagory(
            //           Icon(FontAwesomeIcons.locationCrosshairs),
            //           Color.fromARGB(255, 83, 215, 116), () {
            //         Navigator.of(context).pushNamed(HotelScreen.routeName);
            //       }, 'Hotel'),
            //     ),
            //   ],
            // ),

            SizedBox(
              height: 20,
            ),
            // RowItem(
            //   title: "Xu hướng",
            //   onTap: () {
            //     Navigator.of(context).pushNamed(PopularScreen.routeName);
            //   },
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // RowItem(title: "So thich"),
            // Row(
            //   children: [
            //     Expanded(
            //         child: _builtItemCatagory(
            //       Icon(FontAwesomeIcons.route),
            //       // Color.fromARGB(255, 199, 172, 93),
            //       ColorsPalette.primaryColor,
            //       () {
            //         // Navigator.of(context).pushNamed(HotelScreen.routeName);
            //         Navigator.of(context)
            //             .pushNamed(HotelBookingScreen.routeName);
            //       },
            //       'Hotel',
            //     )),
            //     SizedBox(
            //       width: kDefaultPadding,
            //     ),
            //     Expanded(
            //       child: _builtItemCatagory(Icon(FontAwesomeIcons.plane),
            //           Color.fromARGB(255, 224, 149, 122), () {
            //         // Navigator.of(context).pushNamed(PlaneScreen.routeName);
            //       }, 'Plane'),
            //     ),
            //     SizedBox(
            //       width: kDefaultPadding,
            //     ),
            //     Expanded(
            //       child: _builtItemCatagory(
            //           Icon(FontAwesomeIcons.locationCrosshairs),
            //           Color.fromARGB(255, 83, 215, 116), () {
            //         Navigator.of(context).pushNamed(HotelScreen.routeName);
            //       }, 'Hotel'),
            //     ),
            //   ],
            // ),

            // SizedBox(
            //   height: 20,
            // ),
            RowItem(
              title: "Địa điểm",
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: listBuildModel
                      .map((e) => BuiImageHomeScreen(
                            buildModel: e,
                          ))
                      .toList()),
            ),
            SizedBox(
              height: 20,
            ),
            RowItem(
              title: "Kham pha",
              onTap: (() {}),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
                children:
                    // listHotel.map((e) => ItemKhampha(khamPhaModel: e)).toList(),
                    // listKhamPha
                    //     .map((e) => ItemKhampha(khamPhaModel: e))
                    //     .toList()
                    listKhamPha
                        .map((e) => ItemKhampha(khamPhaModel: e))
                        .toList()),
            RowItem(
              title: "Goi y diem den",
              onTap: () {},
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: listImageLeft
                        .map((e) => _buiItemImageHomeScreen(
                            e['name']!, e['image']!, e['like']!))
                        .toList()))
          ],
        ),
      ),
    );
  }
}
