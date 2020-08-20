import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shattered_star/injection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: const Text('Welcome!'),
      ),
      body: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: FloatingActionButton(
          onPressed: () => getSignOut(context),
        ),
      ),
    );
  }

  getSignOut(context) {
    context.bloc<AuthBloc>().add(
          const AuthEvent.signedOut(),
        );
    context.bloc<AuthBloc>().add(
          const AuthEvent.authCheckRequested(),
        );
  }
}
