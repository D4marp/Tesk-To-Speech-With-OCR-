class Language {
  final String code;
  final String name;

  Language({required this.code, required this.name});

  static List<Language> supportedLanguages = [
    Language(code: 'en', name: 'English'),
    Language(code: 'id', name: 'Indonesian'),
    Language(code: 'es', name: 'Spanish'),
  ];
}
