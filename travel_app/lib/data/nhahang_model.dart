import 'package:google_maps_flutter/google_maps_flutter.dart';

class NhaHang {
  NhaHang({
    required this.resName,
    required this.address,
    required this.desciption,
    required this.thumNail,
    required this.locations,
    required this.onTap,
    required this.value,
  });
  String resName;
  String address;
  String desciption;
  String thumNail;
  LatLng locations;
  Function? onTap;
  int value;
}

final List<NhaHang> nhaHang = [
  // final List<Map<String, dynamic>> listPlaace = [
  //   {
  //     "employees": [
  //       {"name": "John", "age": 25},
  //       {"name": "Anna", "age": 29}
  //     ]
  //   }
  // ];

  NhaHang(
      value: 500,
      onTap: () {},
      resName: 'Nhà Hàng Hương Giang',
      address: 'Bạch Đằng-P.4-Tuy Hòa',
      desciption: '4.0',
      thumNail:
          'https://lh3.googleusercontent.com/p/AF1QipOJBOc3LRRqWOmu6nT7IqM1HDbNZGsni7nSL89v=s1360-w1360-h1020',
      locations: LatLng(13.085733239630455, 109.31014787711554)),
  NhaHang(
      value: 500,
      onTap: () {},
      resName: 'Nhà Hàng Hải Sản Cao',
      address: 'Bạch Đằng-P.4-Tuy Hòa',
      desciption: '3,7',
      thumNail:
          'https://thodiavn24h.com/wp-content/uploads/2020/06/49376001_2227923934086829_424201958342000640_n-1.jpg',
      locations: LatLng(13.10270886200755, 109.31535126351699)),
  NhaHang(
      value: 500,
      onTap: () {},
      resName: 'Nhà Hàng Phú Anh',
      address: '123AB-Nguyễn Huệ-P.5\nTuy Hòa-Phu Yên',
      desciption: '3,7',
      thumNail:
          'https://lh3.googleusercontent.com/p/AF1QipM2IGPUQGsIYUcNNhP6abXn1OVPlo5pdbHkoEb3=s1360-w1360-h1020',
      locations: LatLng(13.094257893317332, 109.31870024166476)),
  NhaHang(
      value: 500,
      onTap: () {},
      resName: 'Quán Tuấn hải sản',
      address: 'An Ninh Đông\nTuy An-Phú Yên',
      desciption: '4.0',
      thumNail:
          'https://lh3.googleusercontent.com/p/AF1QipPab8Vhk_3k4hJdwjEvYQuHLAk9j9hiri7Ez7fq=s1360-w1360-h1020',
      locations: LatLng(13.286356095074051, 109.29019472377185)),
  NhaHang(
      value: 500,
      onTap: () {},
      resName: 'Seafood Garden Canary',
      address: 'Đ.Mai Xuân Thưởng-P.5\n Tuy Hòa-Phú Yên',
      desciption: '4.1',
      thumNail:
          'https://lh3.googleusercontent.com/p/AF1QipNWPSu7GSZoKDBQJFsuKzcC4AyjYhnvpZpUyiHn=s1360-w1360-h1020',
      locations: LatLng(13.094578543285493, 109.30414090519292)),

  NhaHang(
      value: 500,
      onTap: () {},
      resName: 'Hải sản Năm Ánh Phú Yên',
      address: '303 ĐL Hùng Vương-P.9\nTuy Hòa-Phú Yên',
      desciption: '3.9',
      thumNail:
          'https://lh3.googleusercontent.com/p/AF1QipO6v_7eoOgsZ4Ycm-MVh9CNw79jbrxX_xDNxD27=s1360-w1360-h1020',
      locations: LatLng(13.094578543285493, 109.30414090519292)),
];
