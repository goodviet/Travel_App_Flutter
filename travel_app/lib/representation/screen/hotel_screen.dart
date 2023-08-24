import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/data/hotel_model.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';
import 'package:travel_app/representation/widgets/item_hotel_widget.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({Key? key}) : super(key: key);

  static final String routeName = '/hotel_screen';

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final List<HotelModel> listHotel = [
    HotelModel(
      hotelImage: AssetHelper.phuyen_1,
      hotelName: 'HÀ LONG',
      location: 'Quảng Ninh',
      awayKilometer: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
    HotelModel(
      hotelImage: AssetHelper.hanoi2,
      hotelName: 'HÀ NỘI',
      location: 'Thủ Đô',
      awayKilometer: '2.3 km',
      star: 4.2,
      numberOfReview: 3241,
      price: 234,
    ),
    HotelModel(
      hotelImage: AssetHelper.hue2,
      hotelName: 'HUE',
      location: 'Thành phố Cố đô',
      awayKilometer: '1.1 km',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
    HotelModel(
      hotelImage: AssetHelper.hagiang2,
      hotelName: 'HÀ GIANG',
      location: 'Địa đầu tổ quốc',
      awayKilometer: '1.1 km',
      star: 3.8,
      numberOfReview: 1234,
      price: 132,
    ),
    HotelModel(
      hotelImage: AssetHelper.saigon2,
      hotelName: 'SÀI GÒN',
      location: 'Thành phố mang tên Bác',
      awayKilometer: '364 m',
      star: 4.5,
      numberOfReview: 3241,
      price: 143,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
        implementLeading: true,
        titlestring: 'Các địa điểm đã chọn ',
        child: SingleChildScrollView(
          child: Column(
            children:
                listHotel.map((e) => ItemHotelWidget(hotelModel: e)).toList(),
          ),
        ));
  }
}
