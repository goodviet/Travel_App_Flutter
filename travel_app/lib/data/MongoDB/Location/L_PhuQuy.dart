import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';

class PhuQuy {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  PhuQuy(
      {required this.shopName,
      required this.address,
      required this.description,
      required this.thumbNail,
      required this.locationCoords});
}

final List<PhuQuy> diaDiem = [
  PhuQuy(
      shopName: 'Nhà Thờ Đức Bà',
      address: 'Quận 1 - Sài Gòn',
      description: '4,5',
      locationCoords: LatLng(13.35410402942484, 109.29379471110502),
      thumbNail:
          'https://univietravel.com/uploads/diem-den/vietnam/phuyen/bai-viet-ghenh-da.jpg'),
  PhuQuy(
      shopName: 'Nhà Thờ Đức Bà',
      address: 'Quận 1 - Sài Gòn',
      description: '4,5',
      locationCoords: LatLng(13.35410402942484, 109.29379471110502),
      thumbNail:
          'https://univietravel.com/uploads/diem-den/vietnam/phuyen/bai-viet-ghenh-da.jpg'),
  PhuQuy(
      shopName: 'Nhà Thờ Đức Bà',
      address: 'Quận 1 - Sài Gòn',
      description: '4,5',
      locationCoords: LatLng(13.35410402942484, 109.29379471110502),
      thumbNail:
          'https://univietravel.com/uploads/diem-den/vietnam/phuyen/bai-viet-ghenh-da.jpg'),
  PhuQuy(
      shopName: 'Nhà Thờ Đức Bà',
      address: 'Quận 1 - Sài Gòn',
      description: '4,5',
      locationCoords: LatLng(13.35410402942484, 109.29379471110502),
      thumbNail:
          'https://univietravel.com/uploads/diem-den/vietnam/phuyen/bai-viet-ghenh-da.jpg'),
];
