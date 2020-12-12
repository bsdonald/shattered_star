import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

class BioForm extends StatelessWidget {
  const BioForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character editedCharacter;
    String editedCharacterName;

    return BlocBuilder<CharacterFormBloc, CharacterFormState>(
      // buildWhen: (p, c) => p.isEditing != c.isEditing,
      // listener: (context, state) {
      // },
      builder: (context, state) {
        editedCharacter = state.character;
        editedCharacterName = editedCharacter.name.isValid() ? editedCharacter.name.getOrCrash() : 'your character';
        return Center(
          child: Column(
            children: <Widget>[
              Text('Almost done! Now we need a short description of $editedCharacterName'),
              TextFormField(
                initialValue: editedCharacter.description.isValid() ? editedCharacter.description.getOrCrash() : '',
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: '',
                  labelText: 'Bio:',
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
                      CharacterFormEvent.descriptionChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.description.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Description.maxLength,
                minLines: 6,
                maxLines: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.backButtonPressed()),
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.nextButtonPressed()),
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
