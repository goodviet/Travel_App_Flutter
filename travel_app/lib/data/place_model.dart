import 'package:travel_app/core/helpers/asset_helper.dart';

class PlaceModel {
  PlaceModel({
    required this.placeImage,
    required this.placeName,
    required this.placelocation,
    required this.placeawayKilometer,
    required this.placestar,
  });
  String placeImage;
  String placeName;
  String placelocation;
  String placeawayKilometer;
  double placestar;
}

final List<PlaceModel> listPlace = [
  PlaceModel(
      placeImage: AssetHelper.hanoi,
      placeName: "Ha Noi",
      placelocation: "Thu Do",
      placeawayKilometer: '400km',
      placestar: 5),
  PlaceModel(
      placeImage: AssetHelper.phuquy,
      placeName: "Phu Quy",
      placelocation: "Bien",
      placeawayKilometer: '400km',
      placestar: 5),
  PlaceModel(
      placeImage: AssetHelper.phuyen,
      placeName: "Phu Yen",
      placelocation: "Bien",
      placeawayKilometer: '400km',
      placestar: 5),
  PlaceModel(
      placeImage: AssetHelper.saigon,
      placeName: "Sai Gon",
      placelocation: "Bien",
      placeawayKilometer: '400km',
      placestar: 5),
  PlaceModel(
      placeImage: AssetHelper.sapa,
      placeName: "Sa Pa",
      placelocation: "Bien",
      placeawayKilometer: '400km',
      placestar: 5),
  PlaceModel(
      placeImage: AssetHelper.quynhon,
      placeName: "Quy Nhon",
      placelocation: "Bien",
      placeawayKilometer: '400km',
      placestar: 5),
];
