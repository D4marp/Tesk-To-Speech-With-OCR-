import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/tts_services.dart';

final ttsProvider = Provider((ref) => TTSNotifier(TTSService()));

class TTSNotifier {
  final TTSService _ttsService;

  TTSNotifier(this._ttsService);

  Future<void> speak(String text, {String? language}) async {
    await _ttsService.speak(text, language: language);
  }

  Future<void> stop() async {
    await _ttsService.stop();
  }
}
