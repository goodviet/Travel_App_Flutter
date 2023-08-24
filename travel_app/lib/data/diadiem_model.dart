import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';

class Diadiem {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Diadiem(
      {required this.shopName,
      required this.address,
      required this.description,
      required this.thumbNail,
      required this.locationCoords});
}

final List<Diadiem> diaDiem = [
  Diadiem(
      shopName: 'Gành Đá Đĩa',
      address: 'Tuy An - Phú Yên',
      description: '4,5',
      locationCoords: LatLng(13.35410402942484, 109.29379471110502),
      thumbNail:
          'https://univietravel.com/uploads/diem-den/vietnam/phuyen/bai-viet-ghenh-da.jpg'),
  Diadiem(
      shopName: 'Mũi Điện',
      address: 'Đông Hoà - Phsu Yên',
      description: '4,4',
      locationCoords: LatLng(12.8967675930703, 109.45693728041795),
      thumbNail:
          'https://lh3.googleusercontent.com/p/AF1QipNOBibJQn23_NixLevazdFJuBKvHplcSaBzY78s=s1360-w1360-h1020'),
  //
  Diadiem(
      shopName: 'Thap Nghinh Phong',
      address: 'Tuy Hoa - Phu Yen',
      description: '4,7',
      thumbNail:
          'https://i.pinimg.com/564x/ee/25/f5/ee25f53685ee340e781375a2173897eb.jpg',
      locationCoords: LatLng(13.12367285810069, 109.30902545420567)),
  Diadiem(
      shopName: 'Thap Nhan',
      address: 'Tuy Hoa - Phu Yen',
      description: '4,0',
      thumbNail:
          'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/09/thap-nhan-phu-yen2-1426740740-e1506501957266.jpg',
      locationCoords: LatLng(13.08923178668889, 109.29941241786796)),
  Diadiem(
      shopName: 'Bãi Xép',
      address: '',
      description: '',
      thumbNail:
          'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/BaiXep-e1502882283785.png',
      locationCoords: LatLng(13.191604373338407, 109.30145533688746)),
  Diadiem(
      shopName: 'Gành Đèn',
      address: '',
      description: '',
      thumbNail:
          'https://52hz.vn/wp-content/uploads/2022/08/hai-dang-ghenh-den-ve-dem.jpg',
      locationCoords: LatLng(13.364018340248926, 109.29378922275329)),
  Diadiem(
      shopName: 'Hòn Yến',
      address: '',
      description: '',
      thumbNail:
          'https://media.mia.vn/uploads/blog-du-lich/hon-yen-phu-yen-noi-an-chua-net-dep-dep-thanh-binh-va-tho-mong-04-1637716220.jpg',
      locationCoords: LatLng(13.225688155928566, 109.30894169675452)),
];
