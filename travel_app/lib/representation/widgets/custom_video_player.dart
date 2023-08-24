import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../data/models/post_model.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key, required this.post});
  final Post post;

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.post.assetPath);
    controller.initialize().then((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(controller.dataSource),
      onVisibilityChanged: (VisibilityInfo) {
        if (VisibilityInfo.visibleFraction > 0.5) {
          controller.play();
        } else {
          if (mounted) {
            controller.pause();
          }
        }
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (controller.value.isPlaying) {
              controller.pause();
            } else {
              controller.play();
            }
          });
        },
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: Stack(children: [
            VideoPlayer(controller),
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.2, 0.8, 1.0]),
                ),
              ),
            ),
            _buildVideoCaptions(context),
            _buildVideoActions(context)
          ]),
        ),
      ),
    );
  }

  Align _buildVideoActions(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: controller.value.size.height,
        width: MediaQuery.of(context).size.width * 0.2,
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            _VideoActions(
              icon: Icons.favorite,
              value: '100.5k',
            ),
            SizedBox(
              height: 10,
            ),
            _VideoActions(
              icon: Icons.comment,
              value: '100.5k',
              
            ),
            SizedBox(
              height: 10,
            ),
            _VideoActions(
              icon: Icons.forward_rounded,
              value: '100.5k',
            ),
          ],
        ),
      ),
    );
  }

  Align _buildVideoCaptions(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 125,
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '@${widget.post.user.username}',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.post.caption,
              maxLines: 3,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class _VideoActions extends StatelessWidget {
  const _VideoActions({
    Key? key,
    required this.icon,
    required this.value, 
  }) : super(key: key);
  final IconData icon;
  final String value;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: Ink(
            decoration: const ShapeDecoration(
                color: Colors.black, shape: CircleBorder()),
            child: IconButton(
                onPressed: () {}, color: Colors.white, icon: Icon(icon)),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
