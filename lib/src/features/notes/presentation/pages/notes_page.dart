import 'package:flutter/material.dart';
import 'package:notesapp/src/core/widgets/custom_scaffold_widget.dart';
import 'package:notesapp/src/core/widgets/custom_text_field_widget.dart';
import 'package:notesapp/src/core/widgets/privacy_policy_widget.dart';
import 'package:notesapp/src/features/notes/data/models/note_model.dart';
import 'package:notesapp/src/features/notes/presentation/controllers/notes_controller.dart';

import '../widgets/note_tile_widget.dart';

class NotesPage extends StatelessWidget {
  final NotesController notesController;
  const NotesPage({super.key, required this.notesController});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * .75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      children: [
                        NoteTileWidget(
                          noteModel: NoteModel(
                            text: 'mock text 1',
                            creationDate: DateTime.now(),
                          ),
                        ),
                        NoteTileWidget(
                          noteModel: NoteModel(
                            text: 'mock text 2',
                            creationDate: DateTime.now(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                const CustomTextFieldWidget(
                  hint: 'Digite seu texto',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const PrivacyPolicyWidget(),
        ],
      ),
    );
  }
}
