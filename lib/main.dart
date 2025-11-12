import 'package:app_prototype/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final String supabaseApiUrl = String.fromEnvironment("SUPABASE_API_URL");
  final String supabaseApiAnonKey = String.fromEnvironment(
    "SUPABASE_API_ANON_KEY",
  );

  await Supabase.initialize(url: supabaseApiUrl, anonKey: supabaseApiAnonKey);

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true, home: HomeScreen());
  }
}
