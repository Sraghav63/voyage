import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://nheutmvtifgbhjfkgucg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5oZXV0bXZ0aWZnYmhqZmtndWNnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjIyMjMxMTMsImV4cCI6MjAzNzc5OTExM30.RIZ1jrQ5E-5vBMSaH7VWH7TtprCI0w3pRp-jU1yvmVk';

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
