class OCRResult {
  final String text;
  final DateTime timestamp;

  OCRResult({required this.text, required this.timestamp});

  Map<String, dynamic> toJson() => {
        'text': text,
        'timestamp': timestamp.toIso8601String(),
      };

  factory OCRResult.fromJson(Map<String, dynamic> json) => OCRResult(
        text: json['text'],
        timestamp: DateTime.parse(json['timestamp']),
      );
}