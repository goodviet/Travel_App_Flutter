import 'user_model.dart';

enum PostType { image, video, aduio }

class Post {
  final String id;
  final User user;
  final PostType type;
  final String caption;
  final String assetPath;

  Post(
      {required this.id,
      required this.user,
      required this.type,
      required this.caption,
      required this.assetPath});

  static List<Post> posts = [
    Post(
        id: '1',
        user: User.users[0],
        type: PostType.video,
        caption:
            "Thanh xuân chính là khoảng thời gian đáng nhớ nhất, vừa đẹp đẽ vừa đơn thuần, bạn bè luôn ở bên cạnh, còn người thầm thương mến luôn ở ngay trước mắt...",
        assetPath: 'assets/videos/video_3.mp4'),
    Post(
        id: '2',
        user: User.users[1],
        type: PostType.video,
        caption:
            "Thanh xuân chính là khoảng thời gian đáng nhớ nhất, vừa đẹp đẽ vừa đơn thuần, bạn bè luôn ở bên cạnh, còn người thầm thương mến luôn ở ngay trước mắt...",
        assetPath: 'assets/videos/video_2.mp4'),
  ];
}
