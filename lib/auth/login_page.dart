import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../dashboard/dashboard_page.dart';
import '../services/firebase/firebase_auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({this.demoMode = false, super.key});
  final bool demoMode;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool creating = false;
  bool busy = false;
  String? error;

  Future<void> submit() async {
    if (widget.demoMode) {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const DashboardPage()),
        );
      }
      return;
    }
    setState(() {
      busy = true;
      error = null;
    });
    try {
      final auth = FirebaseAuthService();
      if (creating) {
        await auth.createAccount(
          email: email.text.trim(),
          password: password.text,
        );
      } else {
        await auth.signIn(email: email.text.trim(), password: password.text);
      }
    } on FirebaseAuthException catch (exception) {
      setState(() => error = exception.message ?? 'Unable to sign in.');
    } finally {
      if (mounted) setState(() => busy = false);
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(28),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.auto_awesome,
                  color: Color(0xFFF0B35A),
                  size: 52,
                ),
                const SizedBox(height: 18),
                const Text(
                  'SHATTERED STAR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.demoMode
                      ? 'Demo mode · Firebase config pending'
                      : 'Your campaign companion',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white.withValues(alpha: .65)),
                ),
                const SizedBox(height: 44),
                Text(
                  creating ? 'Create your account' : 'Welcome back',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.mail_outline),
                  ),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),
                if (error != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    error!,
                    style: const TextStyle(color: Color(0xFFFF9E91)),
                  ),
                ],
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: busy ? null : submit,
                  icon: busy
                      ? const SizedBox.square(
                          dimension: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.login),
                  label: Text(
                    widget.demoMode
                        ? 'Enter demo dashboard'
                        : creating
                        ? 'Create account'
                        : 'Sign in',
                  ),
                ),
                TextButton(
                  onPressed: () => setState(() => creating = !creating),
                  child: Text(
                    creating
                        ? 'Already have an account? Sign in'
                        : 'Need an account? Create one',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
