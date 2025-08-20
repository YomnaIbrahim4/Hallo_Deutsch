import 'package:audioplayers/audioplayers.dart';

class AudioPlayerHelper {
  static final player = AudioPlayer();

  static Future<void> playAudio(String audioPath) async {
    await player.play(AssetSource(audioPath));
  }

  static Future<void> stopAudio() async {
    await player.stop();
  }
}
