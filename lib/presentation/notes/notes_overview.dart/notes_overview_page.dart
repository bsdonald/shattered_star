import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        leading: IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {
            context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.indeterminate_check_box),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: Navigate to NoteFormPage
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
