import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/data/build_model.dart';
import 'package:travel_app/representation/screen/food_screen.dart';
import 'package:travel_app/representation/screen/guest_and_room.dart';
import 'package:travel_app/representation/screen/hotel_booking_screen.dart';
import 'package:travel_app/representation/screen/hotel_screen.dart';
import 'package:travel_app/representation/screen/popular_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:travel_app/representation/widgets/guest_and_room_booking_screen.dart';
import 'package:travel_app/representation/widgets/item_booking_widget.dart';

// class DiaDiemPhuHop extends StatefulWidget {
//   const DiaDiemPhuHop({super.key});
//   static const String routeName = '/diadiem_phuhop_screen';

//   @override
//   State<DiaDiemPhuHop> createState() => _DiaDiemPhuHopState();
// }

// class _DiaDiemPhuHopState extends State<DiaDiemPhuHop> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AppBarContainerWidget(
//         implementLeading: true,
//         titlestring: 'Dia Diem Phu Hop',
//         child: Container(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: kDefaultPadding * 2,
//               ),
//               ItemBookingWidget(
//                 color: Colors.white,
//                 icon: AssetHelper.icoLocation,
//                 title: 'Các địa điểm tham quan',
//                 description: 'Phu Yen',
//                 onTap: () {
//                   Navigator.of(context).pushNamed(FoodScreen.routeName);
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ItemBookingWidget(
//                 color: Colors.white,
//                 icon: AssetHelper.icoFood,
//                 title: 'Quán ăn phù hợp',
//                 description: 'Hải Sản',
//                 onTap: () {
//                   // Navigator.of(context).pushNamed(LocationScreen.routeName);
//                   Navigator.of(context).pushNamed(PopularScreen.routeName);
//                 },
//               ),
//               SizedBox(
//                 height: kDefaultPadding,
//               ),
//               ButtomWidget(
//                 title: 'Xem các địa điểm đã chọn',
//                 ontap: () {
//                   // Navigator.of(context).pushNamed(HotelScreen.routeName);
//                   Navigator.of(context).pushNamed(HotelScreen.routeName);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class DiaDiemPhuHop extends StatefulWidget {
  const DiaDiemPhuHop({
    super.key,
  });
  static const String routeName = '/diadiem_phuhop_screen';

  @override
  State<DiaDiemPhuHop> createState() => _DiadiemPhuHopState();
}

class _DiadiemPhuHopState extends State<DiaDiemPhuHop> {
  final GlobalKey<ItemGuestAndRoomState> _itemcountGio =
      GlobalKey<ItemGuestAndRoomState>();
  // String? check;
  String? timeSelected;
  String? destination;
  String? dateSelected;

  @override
  Widget build(BuildContext context) {
    // final int number = ModalRoute.of(context)?.settings.arguments as int;
    // final String name = ModalRoute.of(context)?.settings.arguments as String;
    final Map<String, dynamic>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final int? number = arguments?['number'];
    final String? name = arguments?['name'];
    return Scaffold(
      body: AppBarContainerWidget(
        implementLeading: true,
        titlestring: 'Địa điểm phù hợp',
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: kDefaultPadding * 2,
              ),
              ItemBookingWidget(
                color: Colors.white,
                icon: AssetHelper.icoClock,

                title: 'Số giờ đã chọn đi trong ngày',
                description: '$number' ' Giờ' ?? 'chưa chọn',
                // onTap: () async {
                //   final push = await Navigator.of(context)
                //       .pushNamed(GuestAndRoomBookingScreen.routeName);
                //   if (push is List<int>) {
                //     setState(() {
                //       timeSelected = '${push[0]} Giờ';
                //     });
                //   }
                // },
              ),
              SizedBox(height: 20),
              ItemBookingWidget(
                color: Colors.white,
                icon: AssetHelper.icoLocation,
                title: 'Các địa điểm tham quan',
                description: name ?? '',
                onTap: () {
                  Navigator.of(context).pushNamed(FoodScreen.routeName);
                },
              ),
              SizedBox(
                height: 20,
              ),
              ItemBookingWidget(
                color: Colors.white,
                icon: AssetHelper.icoFood,
                title: 'Quán ăn phù hợp',
                description: 'Hải Sản',
                onTap: () {
                  // Navigator.of(context).pushNamed(LocationScreen.routeName);
                  Navigator.of(context).pushNamed(PopularScreen.routeName);
                },
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              ButtomWidget(
                title: 'Xem các địa điểm đã chọn',
                ontap: () {
                  // Navigator.of(context).pushNamed(HotelScreen.routeName);
                  Navigator.of(context).pushNamed(HotelScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class DiaDiemPhuHop extends StatelessWidget {
//   const DiaDiemPhuHop({
//     super.key,
//     this.destination,
//   });
//   static const String routeName = '/diadiem_phuhop_screen';

//   final String? destination;
//   String? dateSelected;
//   String? timeSelected;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AppBarContainerWidget(
//         implementLeading: true,
//         titlestring: 'Dia Diem Phu Hop',
//         child: Container(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: kDefaultPadding * 2,
//               ),
//               ItemBookingWidget(
//                 color: Colors.white,
//                 icon: AssetHelper.icoClock,
//                 title: 'Đi trong ngày',
//                 description: timeSelected ?? 'chưa chọn',
//                 onTap: () async {
//                   final push = await Navigator.of(context)
//                       .pushNamed(GuestAndRoomBookingScreen.routeName);
//                   if (push is List<int>) {
//                     setState(() {
//                       timeSelected = '${push[0]} Giờ';
//                     });
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: kDefaultPadding * 2,
//               ),
//               ItemBookingWidget(
//                 color: Colors.white,
//                 icon: AssetHelper.icoLocation,
//                 title: 'Các địa điểm tham quan',
//                 description: destination ?? 'Phu Yen',
//                 onTap: () {
//                   Navigator.of(context).pushNamed(FoodScreen.routeName);
//                 },
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ItemBookingWidget(
//                 color: Colors.white,
//                 icon: AssetHelper.icoFood,
//                 title: 'Quán ăn phù hợp',
//                 description: 'Hải Sản',
//                 onTap: () {
//                   // Navigator.of(context).pushNamed(LocationScreen.routeName);
//                   Navigator.of(context).pushNamed(PopularScreen.routeName);
//                 },
//               ),
//               SizedBox(
//                 height: kDefaultPadding,
//               ),
//               ButtomWidget(
//                 title: 'Xem các địa điểm đã chọn',
//                 ontap: () {
//                   // Navigator.of(context).pushNamed(HotelScreen.routeName);
//                   Navigator.of(context).pushNamed(HotelScreen.routeName);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

MaterialPageRoute<dynamic>? generateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case DiaDiemPhuHop.routeName:
      final String? destination = (settings.arguments as String?);
      return MaterialPageRoute<dynamic>(
        settings: settings,
        builder: (context) => DiaDiemPhuHop(
            // destination: destination,
            ),
      );
  }
}
