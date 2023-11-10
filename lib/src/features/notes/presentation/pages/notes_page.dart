import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:notesapp/src/core/widgets/custom_scaffold_widget.dart';
import 'package:notesapp/src/core/widgets/custom_text_field_widget.dart';
import 'package:notesapp/src/core/widgets/privacy_policy_widget.dart';
import 'package:notesapp/src/features/notes/presentation/controllers/notes_controller.dart';
import 'package:notesapp/src/features/notes/presentation/widgets/note_tile_widget.dart';

class NotesPage extends StatelessWidget {
  final NotesController notesController;
  const NotesPage({super.key, required this.notesController});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

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
                    child: Observer(
                      builder: (_) {
                        if (notesController.notes == null) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (notesController.notes!.isEmpty) {
                          return const Center(
                            child: Text('Não há notas adicionadas'),
                          );
                        } else {
                          return ListView.builder(
                            itemCount: notesController.notes!.length,
                            itemBuilder: (context, index) {
                              final noteModel = notesController.notes![index];
                              return NoteTileWidget(noteModel: noteModel);
                            },
                          );
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                Observer(builder: (_) {
                  return CustomTextFieldWidget(
                    enabled: notesController.notes != null,
                    autofocus: true,
                    focusNode: focusNode,
                    controller: textController,
                    hint: 'Digite seu texto',
                    textAlign: TextAlign.center,
                    onSubmitted: (text) {
                      if (text.trim().isEmpty) return;
                      notesController.add(text.trim());
                      textController.clear();
                      focusNode.requestFocus();
                    },
                  );
                }),
              ],
            ),
          ),
          const PrivacyPolicyWidget(),
        ],
      ),
    );
  }
}
