import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/character_form_body.dart';

class NewCharacterFormScaffold extends StatelessWidget {
  const NewCharacterFormScaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<CharacterFormBloc, CharacterFormState>(
          buildWhen: (p, c) => p.isEditing != c.isEditing,
          builder: (context, state) {
            return Text(state.isEditing ? 'Edit Character' : 'Create Character');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              context.bloc<CharacterFormBloc>().add(const CharacterFormEvent.saved());
            },
          ),
        ],
      ),
      body: BlocBuilder<CharacterFormBloc, CharacterFormState>(
        buildWhen: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: CharacterFormBody(),
          );
        },
      ),
    );
  }
}