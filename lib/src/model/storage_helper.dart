import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveScheduledDate(DateTime date) async {
  final prefs = await SharedPreferences.getInstance();
  List<String> scheduledDates = await loadScheduledDates() ?? [];
  scheduledDates.add('${date.year}-${date.month}-${date.day}');
  await prefs.setString('scheduledDates', jsonEncode(scheduledDates));
}

Future<List<String>?> loadScheduledDates() async {
  final prefs = await SharedPreferences.getInstance();
  String? jsonString = prefs.getString('scheduledDates');
  if (jsonString != null) {
    return List<String>.from(json.decode(jsonString));
  }
  return null;
}
