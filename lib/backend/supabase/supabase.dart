import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://rvbplhgmsrweeifqgpnf.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ2YnBsaGdtc3J3ZWVpZnFncG5mIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjk4NjAzODUsImV4cCI6MjA0NTQzNjM4NX0.9oQe8eLaevlIWrB1G3AHxEGgdIBaZun-j5QZ9-A3IT0';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
