import 'package:flutter/material.dart';

import '../dashboard/dashboard_page.dart';
import '../services/firebase/firebase_auth_service.dart';
import 'login_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({required this.firebaseReady, this.authService, super.key});
  final bool firebaseReady;
  final FirebaseAuthService? authService;

  @override
  Widget build(BuildContext context) {
    if (!firebaseReady) return const LoginPage(demoMode: true);
    final auth = authService ?? FirebaseAuthService();
    return StreamBuilder(
      stream: auth.authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashPage();
        }
        return snapshot.data == null
            ? const LoginPage()
            : const DashboardPage();
      },
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Center(child: CircularProgressIndicator()));
}
