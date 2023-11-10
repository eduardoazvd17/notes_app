import 'package:mobx/mobx.dart';
import 'package:notesapp/src/features/notes/data/models/note_model.dart';
import 'package:notesapp/src/features/notes/data/services/notes_service.dart';
part 'notes_controller.g.dart';

class NotesController = NotesControllerBase with _$NotesController;

abstract class NotesControllerBase with Store {
  @observable
  ObservableList<NoteModel>? notes;

  Future<void> loadNotes() async {
    final data = await NotesService.loadNotes();
    notes = ObservableList<NoteModel>.of(data.map((e) => NoteModel.fromMap(e)));
  }

  void add(String noteText) {
    notes?.add(
      NoteModel(id: notes?.length ?? 0, text: noteText),
    );
    NotesService.saveNotes(notes!.map((e) => e.toMap()));
  }

  void remove(NoteModel note) {
    notes?.remove(note);
    NotesService.saveNotes(notes!.map((e) => e.toMap()));
  }

  void update(NoteModel note) {
    if (notes == null) return;
    final currentNote = notes!.firstWhere((e) => e.id == note.id);
    final index = notes!.indexOf(currentNote);
    notes![index] = note;
    NotesService.saveNotes(notes!.map((e) => e.toMap()));
  }
}
