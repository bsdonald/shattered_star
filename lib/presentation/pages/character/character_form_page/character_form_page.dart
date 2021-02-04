import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/scaffolds/edited_character_form_scaffold.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/scaffolds/new_character_form_scaffold.dart';
import 'package:shattered_star/presentation/routes/router.gr.dart';

class CharacterFormPage extends StatelessWidget {
  final Character editedCharacter;
  final bool newCharacter;

  const CharacterFormPage({
    Key key,
    this.editedCharacter,
    this.newCharacter,
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
              newCharacter ? const NewCharacterFormScaffold() : const EditedCharacterFormScaffold(),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
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
