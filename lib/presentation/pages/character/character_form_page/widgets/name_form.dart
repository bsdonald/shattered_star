import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/domain/enum/form_block.dart';

class NameForm extends StatelessWidget {
  const NameForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character editedCharacter;
    return Center(
      child: Column(
        children: <Widget>[
          Text('Enter your Character\'s Name'),
          BlocBuilder<CharacterFormBloc, CharacterFormState>(
              // buildWhen: (p, c) => p.isEditing != c.isEditing,
              // listener: (context, state) {
              // },
              builder: (context, state) {
                editedCharacter = state.character;
                return TextFormField(
                  initialValue: editedCharacter.name.isValid() ? editedCharacter.name.getOrCrash() : '',
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    counterText: '',
                    labelText: 'Name:',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                        CharacterFormEvent.nameChanged(value),
                      ),
                  validator: (_) => context.bloc<CharacterFormBloc>().state.character.name.value.fold(
                        (f) => f.maybeMap(
                          empty: (f) => 'cannot be empty',
                          exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                  maxLength: Name.maxLength,
                );
              }),
          ElevatedButton(
            onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.nextButtonPressed()),
            child: Text('Next'),
          )
        ],
      ),
    );
  }
}
