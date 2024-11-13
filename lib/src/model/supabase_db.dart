import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseDb {
  static String url = "https://dyovnorfifnuybxphogi.supabase.co";
  static String anonKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR5b3Zub3JmaWZudXlieHBob2dpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MDEyMDYsImV4cCI6MjA0NzA3NzIwNn0.EIgYxbVYhGvphEBzrgomYQu64RSGYayos73zSCluVZw";

  static Future<void> init() async {
    await Supabase.initialize(
      url: url,
      anonKey: anonKey,
    );
  }

  static final supabase = Supabase.instance.client;
}
