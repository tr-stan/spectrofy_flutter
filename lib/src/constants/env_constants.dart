/// Abstract (non-constructable) class to access environment variables.
///
/// This includes sensitive data such as private keys for external APIs, emails,
///  and other
abstract class EnvConstants {
  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: '',
  );
  static const String supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: '',
  );
}
