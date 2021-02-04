import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/player_character_card.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class CharacterFormPage extends StatelessWidget {
  final Character editedCharacter;

  const CharacterFormPage({
    Key key,
    this.editedCharacter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CharacterFormBloc>()..add(CharacterFormEvent.initialized(optionOf(editedCharacter))),
      child: BlocConsumer<CharacterFormBloc, CharacterFormState>(
        listenWhen: (p, c) => p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
        listener: (context, state) {
          state.saveFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      insufficientPermission: (_) => 'Insufficient permissions ❌',
                      unableToUpdate: (_) => "Couldn't update the Character. Was it deleted from another device?",
                      unexpected: (_) => 'Unexpected error occured, please contact support.',
                    ),
                  ).show(context);
                },
                (_) {
                  ExtendedNavigator.of(context).popUntil(
                    (route) => route.settings.name == Routes.characterListPage,
                  );
                },
              );
            },
          );
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              const CharacterFormScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class CharacterFormScaffold extends StatelessWidget {
  const CharacterFormScaffold({
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
            child: PlayerCharacterCard(isEditing: true, character: null),
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isSaving = false;

    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          duration: const Duration(milliseconds: 150),
          color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
          child: Visibility(
            visible: isSaving,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircularProgressIndicator(),
                const SizedBox(height: 8),
                Text(
                  'Saving',
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                ),
              ],
            ),
          )),
    );
  }
}
