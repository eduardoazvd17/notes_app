import 'package:flutter/material.dart';

import '../../../../core/utils/theme_utils.dart';
import '../../data/models/note_model.dart';

class NoteTileWidget extends StatelessWidget {
  final NoteModel noteModel;
  final bool isEditing;
  final void Function(NoteModel)? onEdit;
  final void Function(NoteModel)? onDelete;

  const NoteTileWidget({
    super.key,
    required this.noteModel,
    this.isEditing = false,
    this.onEdit,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  noteModel.text,
                  textAlign: TextAlign.center,
                  style: ThemeUtils.boldTextStyle,
                ),
              ),
              const SizedBox(width: 5),
              InkWell(
                onTap: () => onEdit?.call(noteModel),
                child: Icon(
                  Icons.edit,
                  size: 28,
                  color: isEditing ? ThemeUtils.primaryColor : null,
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () => onDelete?.call(noteModel),
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
