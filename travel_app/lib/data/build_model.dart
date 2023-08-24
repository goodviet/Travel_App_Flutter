import 'package:travel_app/core/helpers/asset_helper.dart';

class BuildModel {
  BuildModel({
    required this.name,
    required this.image,
    required this.like,
  });

  final String name;
  final String image;
  final String like;
}
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
