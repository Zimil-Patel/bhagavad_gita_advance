
class GitaModel {
  final int chapter;
  final ChapterName chapterName;
  final List<Verse> verses;

  GitaModel({
    required this.chapter,
    required this.chapterName,
    required this.verses,
  });

  factory GitaModel.fromJson(Map json) => GitaModel(
    chapter: json["Chapter"],
    chapterName: ChapterName.fromJson(json["ChapterName"]),
    verses: List<Verse>.from(json["Verses"].map((x) => Verse.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Chapter": chapter,
    "ChapterName": chapterName.toJson(),
    "Verses": List<dynamic>.from(verses.map((x) => x.toJson())),
  };
}

class ChapterName {
  final String hindi;
  final String english;
  final String gujarati;
  final String sanskrit;

  ChapterName({
    required this.hindi,
    required this.english,
    required this.gujarati,
    required this.sanskrit,
  });

  factory ChapterName.fromJson(Map json) => ChapterName(
    hindi: json["Hindi"],
    english: json["English"],
    gujarati: json["Gujarati"],
    sanskrit: json["Sanskrit"],
  );

  Map<String, dynamic> toJson() => {
    "Hindi": hindi,
    "English": english,
    "Gujarati": gujarati,
    "Sanskrit": sanskrit,
  };
}

class Verse {
  final int verseNumber;
  final ChapterName text;
  final bool isFavorite;

  Verse( {
    required this.verseNumber,
    required this.text,
    required this.isFavorite,
  });

  factory Verse.fromJson(Map json) => Verse(
    verseNumber: json["VerseNumber"],
    text: ChapterName.fromJson(json["Text"]),
    isFavorite: false,
  );

  Map<String, dynamic> toJson() => {
    "VerseNumber": verseNumber,
    "Text": text.toJson(),
  };
}
