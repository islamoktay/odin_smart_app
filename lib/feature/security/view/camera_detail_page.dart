import 'package:flutter/material.dart';
import 'package:odin_smart_app/core/shared_widgets/app_text.dart';
import 'package:odin_smart_app/core/shared_widgets/custom_scaffold.dart';
import 'package:odin_smart_app/core/theme/_theme_exports.dart';
import 'package:odin_smart_app/feature/home_page/camera/_camera_exports.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CameraDetailPage extends StatefulWidget {
  final CameraModel cameraModel;
  const CameraDetailPage({Key? key, required this.cameraModel})
      : super(key: key);

  @override
  State<CameraDetailPage> createState() => _CameraDetailPageState();
}

class _CameraDetailPageState extends State<CameraDetailPage> {
  late YoutubePlayerController _controller;
  late PlayerState _playerState;
  bool _isPlayerReady = false;
  @override
  void initState() {
    if (widget.cameraModel.url != null) {
      _controller = YoutubePlayerController(
        initialVideoId: widget.cameraModel.url!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          isLive: true,
        ),
      )..addListener(listener);
      _playerState = PlayerState.unknown;
    }
    super.initState();
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Padding(
      padding: PaddingConstants.generalPagePadding,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .6,
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            const SizedBox(height: 20),
            AppTextWidget(
              widget.cameraModel.name!,
              textSize: 35,
            ),
            const SizedBox(height: 20),
            YoutubePlayerBuilder(
              builder: (context, player) => Center(child: player),
              player: YoutubePlayer(
                onReady: () {
                  _isPlayerReady = true;
                },
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: AppColors.purpleColor,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
