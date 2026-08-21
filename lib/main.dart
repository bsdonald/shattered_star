import 'package:flutter/material.dart';

import 'auth/auth_gate.dart';
import 'core/app_theme.dart';
import 'services/firebase/firebase_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firebaseReady = await FirebaseService.initialize();
  runApp(ShatteredStarApp(firebaseReady: firebaseReady));
}

class ShatteredStarApp extends StatelessWidget {
  const ShatteredStarApp({required this.firebaseReady, super.key});
  final bool firebaseReady;

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Shattered Star',
    debugShowCheckedModeBanner: false,
    theme: buildAppTheme(),
    home: AuthGate(firebaseReady: firebaseReady),
  );
}
