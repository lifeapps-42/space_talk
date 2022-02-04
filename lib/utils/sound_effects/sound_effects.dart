import 'package:flutter/services.dart' show rootBundle;
import 'package:soundpool/soundpool.dart';

class SoundEffects {
  SoundEffects._();
  static Future<void> init() async {
    const options = SoundpoolOptions(streamType: StreamType.notification);
    _pool = Soundpool.fromOptions(options: options);
    _lighterId =
        await rootBundle.load('assets/sounds/lighter.mp3').then(_pool!.load);
    _play = SoundEffects._();
  }

  static Soundpool? _pool;
  static SoundEffects? _play;
  static int? _lighterId;

  static SoundEffects get play => _play!;

  Future<void> lighter() async {
    _pool!.setVolume(soundId: _lighterId, volume: 0.3);
    await SoundEffects._pool!.play(SoundEffects._lighterId!);
  }
}
