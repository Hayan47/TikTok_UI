import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/widgets/actions_toolbar.dart';
import 'package:tiktok/widgets/video_description.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final String videoUrl;
  const Video({super.key, required this.videoUrl});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  initialize() async {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    await _videoPlayerController.initialize().then((_) => setState(() {}));

    _chewieController = ChewieController(
      draggableProgressBar: false,
      showControls: false,
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      // fullScreenByDefault: true,
      // allowFullScreen: true,
      autoInitialize: true,
      // draggableProgressBar: true,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.white,
        playedColor: Colors.white,
        bufferedColor: Colors.white,
        handleColor: Colors.white,
      ),
      cupertinoProgressColors: ChewieProgressColors(
        backgroundColor: Colors.white,
        playedColor: Colors.white,
        bufferedColor: Colors.white,
        handleColor: Colors.white,
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          _chewieController != null
              ? Column(
                  children: [
                    Expanded(
                      child: Chewie(
                        controller: _chewieController!,
                      ),
                    ),
                  ],
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                VideoDescription(),
                ActionsToolbar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
