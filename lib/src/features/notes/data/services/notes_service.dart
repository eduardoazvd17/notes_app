import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class NotesService {
  static Future<List<Map<String, dynamic>>> loadNotes() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final List<String> data = prefs.getStringList('Notes') ?? [];
      return List<Map<String, dynamic>>.from(data.map((e) => jsonDecode(e)));
    } catch (_) {
      return [];
    }
  }

  static void saveNotes(Iterable<Map<String, dynamic>> notesMap) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      prefs.setStringList('Notes', notesMap.map((e) => jsonEncode(e)).toList());
    } catch (_) {}
  }
}
