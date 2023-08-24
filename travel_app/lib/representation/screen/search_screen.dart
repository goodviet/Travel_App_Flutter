import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/representation/screen/discover_screen.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

import '../../core/constants/dismention_constants.dart';
import '../../core/helpers/asset_helper.dart';
import 'hotel_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static final String routeName = '/search_screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Map<String, String>> listImageLeft = [
    {
      'name': 'PHU YEN',
    },
    {
      'name': 'PHU QUY',
    },
    {
      'name': 'QUY NHON',
    },
    {
      'name': 'HUE',
    },
    {
      'name': 'SAI GON',
    },
    {
      'name': 'DA NANG',
    },
    {
      'name': 'DA LAT',
    },
    {
      'name': 'SA PA',
    },
    {
      'name': 'CAN THO',
    },
    {
      'name': 'CA MAU',
    },
    {
      'name': 'NHA TRANG',
    },
    {
      'name': 'NINH BINH',
    },
    {
      'name': 'HẠ LONG',
    },
    {'name': 'BINH DUONG'}
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

  @override
  Widget build(BuildContext context) {
    //  final String? name = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: ColorsPalette.primaryColor,
      ),
      body: Column(
        children: [
          TextField(
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
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Lịch sử tìm kiếm",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Icon(FontAwesomeIcons.clock)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["name"]),
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(HotelBookingScreen.routeName,arguments: _foundUsers[index]["name"]);
                            // Navigator.of(context)
                            //     .pushNamed(DiscoverScreen.routeName);
                          },
                          leading: Text(_foundUsers[index]["name"].toString()),
                        ),
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Khong tim thay',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    )),
        ],
      ),
    );
  }
}
