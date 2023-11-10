import 'package:equatable/equatable.dart';

class NoteModel extends Equatable {
  final int id;
  final String text;

  const NoteModel({
    required this.id,
    required this.text,
  });

  NoteModel copyWith({String? text}) {
    return NoteModel(id: id, text: text ?? this.text);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'text': text,
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['id'],
      text: map['text'],
    );
  }

  @override
  List<Object?> get props => [id, text];
}
