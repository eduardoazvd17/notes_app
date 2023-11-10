class NoteModel {
  final String text;
  final DateTime creationDate;

  NoteModel({
    required this.text,
    required this.creationDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'creationDate': creationDate,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      text: map['text'],
      creationDate: map['creationDate'],
    );
  }
}
