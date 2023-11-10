import 'package:mobx/mobx.dart';
part 'notes_controller.g.dart';

class NotesController = NotesControllerBase with _$NotesController;

abstract class NotesControllerBase with Store {}
