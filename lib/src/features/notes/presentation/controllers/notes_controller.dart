import 'package:mobx/mobx.dart';
import 'package:notesapp/src/features/notes/data/models/note_model.dart';
import 'package:notesapp/src/features/notes/data/services/notes_service.dart';
part 'notes_controller.g.dart';

class NotesController = NotesControllerBase with _$NotesController;

abstract class NotesControllerBase with Store {
  @observable
  ObservableList<NoteModel>? notes;

  @observable
  NoteModel? editingNote;

  Future<void> loadNotes() async {
    final data = await NotesService.loadNotes();
    notes = ObservableList<NoteModel>.of(data.map((e) => NoteModel.fromMap(e)));
  }

  void add(String noteText) {
    if (editingNote == null) {
      notes?.add(
        NoteModel(
          id: DateTime.now().millisecondsSinceEpoch,
          text: noteText,
        ),
      );
    } else {
      final index = notes!.indexOf(editingNote);
      notes![index] = editingNote!.copyWith(text: noteText);
    }
    editingNote = null;
    NotesService.saveNotes(notes!.map((e) => e.toMap()));
  }

  void remove(NoteModel note) {
    notes?.remove(note);
    NotesService.saveNotes(notes!.map((e) => e.toMap()));
  }

  void toggleEdit(NoteModel note) {
    if (editingNote?.id == note.id) {
      editingNote = null;
    } else {
      editingNote = note;
    }
  }
}
