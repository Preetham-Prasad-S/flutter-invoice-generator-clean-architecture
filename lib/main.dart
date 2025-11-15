// import 'package:app_prototype/core/secrets/supabase_credentials.dart';
import 'package:app_prototype/features/home/presentation/screens/home_screen.dart';
import 'package:app_prototype/features/invoice/presentation/screens/invoice_bill_screen.dart';
import 'package:app_prototype/features/template/presentation/screens/upload_template_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Supabase.initialize(
  //   url: SupabaseCredentials.supabaseUrl,
  //   anonKey: SupabaseCredentials.supabaseAnonKey,
  // );

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
