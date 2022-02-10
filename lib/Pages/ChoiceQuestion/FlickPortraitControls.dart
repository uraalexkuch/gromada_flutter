import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

/// Default portrait controls.
class FlickControls extends StatelessWidget {
  const FlickControls(
      {Key? key,
      this.iconSize = 40,
      this.fontSize = 12,
      this.progressBarSettings})
      : super(key: key);

  final double iconSize;
  final double fontSize;

  /// [FlickProgressBarSettings] settings.
  final FlickProgressBarSettings? progressBarSettings;

  @override
  Widget build(BuildContext context) {
    bool _isMute = true;
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: FlickShowControlsAction(
            child: FlickSeekVideoAction(
              child: Center(
                child: FlickVideoBuffer(
                  child: FlickAutoHideChild(
                    showIfVideoNotInitialized: false,
                    child: FlickPlayToggle(
                      size: Device.screenType.toString() == 'ScreenType.tablet'
                          ? 30
                          : 15,
                      color: Colors.black,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: FlickAutoHideChild(
            autoHide: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Spacer(
                  flex: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlickSoundToggle(
                        size:
                            Device.screenType.toString() == 'ScreenType.tablet'
                                ? iconSize * 2
                                : iconSize * 1.2),
                    SizedBox(
                      width: iconSize / 2.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
