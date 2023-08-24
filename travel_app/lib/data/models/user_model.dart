import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';

class User {
  final String id;
  final String username;
  final String imagePath;
  final int follower;
  final int following;
  final int likes;
  User(
      {required this.id,
      required this.username,
      required this.imagePath,
      this.follower = 0,
      this.following = 0,
      this.likes = 0});

  static List<User> users = [
    User(
        id: '1',
        username: "Nguyen Van A",
        imagePath: "assets/images/dalat.jpg",
        follower: 100,
        following: 100,
        likes: 50),
    User(
        id: '2',
        username: "Nguyen Van A",
        imagePath: "assets/images/dalat.jpg",
        follower: 200,
        following: 500,
        likes: 1000),
    User(
        id: '3',
        username: "Nguyen Van A",
        imagePath: "assets/images/dalat.jpg",
        follower: 200,
        following: 500,
        likes: 1000),
    User(
        id: '4',
        username: "Nguyen Van A",
        imagePath: "assets/images/dalat.jpg",
        follower: 200,
        following: 500,
        likes: 1000),
    User(
        id: '5',
        username: "Nguyen Van A",
        imagePath: "assets/images/dalat.jpg",
        follower: 200,
        following: 500,
        likes: 1000),
  ];
}
