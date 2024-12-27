import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/ocr_result.dart';
import '../services/ocr_services.dart';

final ocrProvider = StateNotifierProvider<OCRNotifier, AsyncValue<OCRResult?>>((ref) {
  return OCRNotifier(OCRService());
});

class OCRNotifier extends StateNotifier<AsyncValue<OCRResult?>> {
  final OCRService _ocrService;

  OCRNotifier(this._ocrService) : super(const AsyncValue.data(null));

  Future<void> extractText(String imagePath) async {
    state = const AsyncValue.loading();
    try {
      final text = await _ocrService.extractTextFromImage(imagePath);
      state = AsyncValue.data(OCRResult(text: text, timestamp: DateTime.now()));
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }

  void clear() {
    state = const AsyncValue.data(null);
  }
}