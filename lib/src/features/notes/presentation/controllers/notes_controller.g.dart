// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotesController on NotesControllerBase, Store {
  late final _$notesAtom =
      Atom(name: 'NotesControllerBase.notes', context: context);

  @override
  ObservableList<NoteModel>? get notes {
    _$notesAtom.reportRead();
    return super.notes;
  }

  @override
  set notes(ObservableList<NoteModel>? value) {
    _$notesAtom.reportWrite(value, super.notes, () {
      super.notes = value;
    });
  }

  late final _$editingNoteAtom =
      Atom(name: 'NotesControllerBase.editingNote', context: context);

  @override
  NoteModel? get editingNote {
    _$editingNoteAtom.reportRead();
    return super.editingNote;
  }

  @override
  set editingNote(NoteModel? value) {
    _$editingNoteAtom.reportWrite(value, super.editingNote, () {
      super.editingNote = value;
    });
  }

  @override
  String toString() {
    return '''
notes: ${notes},
editingNote: ${editingNote}
    ''';
  }
}
