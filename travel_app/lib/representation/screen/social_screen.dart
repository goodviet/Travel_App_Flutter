// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:travel_app/core/helpers/asset_helper.dart';
// import 'package:travel_app/core/helpers/image_helper.dart';
// import 'package:travel_app/representation/screen/search_screen.dart';
// import 'package:travel_app/representation/screen/social_profile_screen.dart';

// import '../../data/models/post_model.dart';
// import '../widgets/custom_buttom_app_bar.dart';
// import '../widgets/custom_video_player.dart';

// class SocialScreen extends StatefulWidget {
//   const SocialScreen({super.key});
//   static final String routeName = '/social_screen';

//   @override
//   State<SocialScreen> createState() => _SocialScreenState();
// }

// class _SocialScreenState extends State<SocialScreen> {
//   @override
//   Widget build(BuildContext context) {
//     List<Post> posts = Post.posts;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: const _CustomAppBar(),
//       bottomNavigationBar: const CustomButtonAppBar(),
//       extendBodyBehindAppBar: true,
//       body: SingleChildScrollView(
//         child: ListView(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           children: posts.map((post) {
//             return CustomVideoPlayer(
//               post: post,
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }

// class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
//   const _CustomAppBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       centerTitle: true,
//       title: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _buildButton(context, "Xu huong"),
//           _buildButton(context, "Video")
//         ],
//       ),
//     );
//   }

//   TextButton _buildButton(BuildContext context, String text) {
//     return TextButton(
//         onPressed: (() {}),
//         style: TextButton.styleFrom(fixedSize: const Size(100, 50)),
//         child: Text(
//           text,
//           style: Theme.of(context)
//               .textTheme
//               .titleMedium!
//               .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
//         ));
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(100.0);
// }
