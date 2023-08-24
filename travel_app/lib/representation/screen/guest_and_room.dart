import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representation/screen/diadiem_phuhop_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:travel_app/representation/widgets/guest_and_room_booking_screen.dart';

import '../../core/constants/dismention_constants.dart';

class GuestAndRoomBookingScreen extends StatefulWidget {
  const GuestAndRoomBookingScreen({Key? key}) : super(key: key);
  static final String routeName = '/guest_and_room';

  @override
  State<GuestAndRoomBookingScreen> createState() =>
      _GuestAndRoomBookingScreenState();
}

class _GuestAndRoomBookingScreenState extends State<GuestAndRoomBookingScreen> {
  final GlobalKey<ItemGuestAndRoomState> _itemcountGio =
      GlobalKey<ItemGuestAndRoomState>();
  // String? check;
  String? timeSelected;

  @override
  Widget build(BuildContext context) {
    final String name = ModalRoute.of(context)?.settings.arguments as String;
    return AppBarContainerWidget(
      implementLeading: true,
      titlestring: 'SỐ GIỜ ĐI TRONG NGÀY ',
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding * 5,
          ),
          // Text('${check}'),

          ItemGuestAndRoom(
              key: _itemcountGio,
              title: 'Giờ',
              icon: AssetHelper.icoClock,
              innitData: 0),

          // ButtomWidget(
          //   title: 'Chọn',
          //   ontap: () {
          //     Navigator.of(context).pop([
          //       _itemcountGio.currentState!.number,
          //     ]);
          //   },
          // ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ButtomWidget(
            title: 'Địa điểm phù hợp',
            ontap: () {
              // Navigator.of(context).pushNamed(
              //   DiaDiemPhuHop.routeName,
              //   arguments: _itemcountGio.currentState!.number,
              // );
              if (_itemcountGio.currentState!.number == 0) {
                print('loi');
              } else if (_itemcountGio.currentState!.number != 0) {
                // Navigator.of(context).pushNamed('/diadiem_phuhop_screen',
                //     arguments: itemcountGio.currentState!.number);
                // Navigate to the next screen
                Navigator.of(context).pushNamed(
                  DiaDiemPhuHop.routeName,
                  arguments: {
                    'number': _itemcountGio.currentState!.number,
                    'name': name
                  },
                );
                print('oe');
              }
            },
          ),
          // SizedBox(
          //   height: kDefaultPadding,
          // ),
          // ButtomWidget(
          //   title: 'Thoát',
          //   ontap: () {
          //     Navigator.of(context).pop([]);
          //   },
          // )
        ],
      ),
    );
  }
}
