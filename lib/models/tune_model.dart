import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color color;
  final String sound;

  const TuneModel({required this.color, required this.sound});
  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
