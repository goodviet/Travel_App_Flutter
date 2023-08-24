import 'package:travel_app/core/helpers/asset_helper.dart';

class KhamPhaModel {
  KhamPhaModel(
      {required this.kpImage,
      required this.kpName,
      required this.kpocation,
      required this.kplike,
      required this.kpcomment,
      required this.thumNail});
  final String kpImage;
  final String kpName;
  final String kpocation;
  final int kplike;
  final int kpcomment;
  final String thumNail;
}

// final List<Map<String, dynamic>> listPlaace = [
//   {
//     "employees": [
//       {"name": "John", "age": 25},
//       {"name": "Anna", "age": 29}
//     ]
//   }
// ];
final List<KhamPhaModel> listKhamPha = [
  KhamPhaModel(
      kpImage: AssetHelper.hagiang,
      kpName: "Hà Giang",
      kpocation: "Cột cờ Lũng Cú",
      kplike: 20,
      kpcomment: 20,
      thumNail:
          "Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ cao khoảng 1.470 m so với mực nước biển, thuộc xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang, Việt Nam.\n Cột cờ Lũng Cú cách điểm cực Bắc Việt Nam khoảng 3,3 km theo đường chim bay Theo chân các du khách đến từ khắp mọi miền đất nước, chúng tôi lên thăm Cột cờ Lũng Cú - di tích lịch sử linh thiêng, hào hùng của dân tộc.Qua một chặng đi xe điện, từ vị trí nhà chờ, du khách bắt đầu hành trình leo 279 bậc thang bộ lên tới khu vực chân cột cờ trên đỉnh núi Rồng.Có thể nói, mỗi một bước đi trên bậc thang dẫn lên cột cờ Lũng Cú, h đẹp của Lũng Cú càng trở nên huyền ảo.Từ trên cao nhìn xuống, du khách có thể thỏa thê ngắm nhìn cảnh núi non trùng điện Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ"),
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
  KhamPhaModel(
      kpImage: AssetHelper.saigon,
      kpName: "Sai Gon",
      kpocation: "Hồ Gươm",
      kplike: 99,
      kpcomment: 189,
      thumNail:
          "Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ cao khoảng 1.470 m so với mực nước biển, thuộc xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang, Việt Nam. Cột cờ Lũng Cú cách điểm cực Bắc Việt Nam khoảng 3,3 km theo đường chim bay."),
  KhamPhaModel(
      kpImage: AssetHelper.vungtau,
      kpName: "Vũng Tàu",
      kpocation: "Tượng Chúa",
      kplike: 99,
      kpcomment: 189,
      thumNail:
          "Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ cao khoảng 1.470 m so với mực nước biển, thuộc xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang, Việt Nam. Cột cờ Lũng Cú cách điểm cực Bắc Việt Nam khoảng 3,3 km theo đường chim bay."),
  KhamPhaModel(
      kpImage: AssetHelper.k_cantho,
      kpName: "Cần Thợ",
      kpocation: "Thuyền Thống",
      kplike: 99,
      kpcomment: 189,
      thumNail:
          "Cột cờ Lũng Cú là một cột cờ quốc gia nằm ở đỉnh Lũng Cú hay còn gọi là đỉnh núi Rồng có độ cao khoảng 1.470 m so với mực nước biển, thuộc xã Lũng Cú, huyện Đồng Văn, tỉnh Hà Giang, Việt Nam. Cột cờ Lũng Cú cách điểm cực Bắc Việt Nam khoảng 3,3 km theo đường chim bay."),
];
