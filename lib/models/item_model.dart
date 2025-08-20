import 'package:hallo_deutsch/audio_player_helper.dart';

class ItemModel{
  final String image;
  final String engText;
  final String gerText;
  final String sound;

  ItemModel({
    required this.image,
    required this.engText,
    required this.gerText,
    required this.sound
});

  void playSound(){
    AudioPlayerHelper.playAudio(sound);
  }

}