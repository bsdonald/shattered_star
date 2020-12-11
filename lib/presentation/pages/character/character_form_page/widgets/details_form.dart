import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/widgets/player_character_card/character_details_field.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

class DetailsForm extends HookWidget {
  const DetailsForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character editedCharacter;
    return Center(
      child: BlocConsumer<CharacterFormBloc, CharacterFormState>(
        listenWhen: (p, c) => p.isEditing != p.isEditing,
        listener: (context, state) {},
        builder: (context, state) {
          editedCharacter = state.character;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailsFormField(
                initialValue: state.character.race.isValid() ? state.character.race.getOrCrash() : '',
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.raceChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.race.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Race.maxLength,
                label: 'Race:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.favoredClassChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.favoredClass.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.FavoredClass.maxLength,
                label: 'Favored Class:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.levelChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.level.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        invalidNumber: (f) => 'Please enter a number',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                label: 'Level:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.genderChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.gender.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Gender.maxLength,
                label: 'Gender:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.ageChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.age.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        invalidNumber: (f) => 'Please enter a number',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                label: 'Age:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.heightChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.height.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Height.maxLength,
                label: 'Height (ft\'in\"):',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.weightChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.weight.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Weight.maxLength,
                label: 'Weight:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.homeChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.home.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Home.maxLength,
                label: 'Home:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.alignmentChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.alignment.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Alignment.maxLength,
                label: 'Alignment:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.deityChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.deity.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Deity.maxLength,
                label: 'Deity:',
              ),
              SizedBox(
                height: 8,
              ),
              DetailsFormField(
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.languagesChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.languages.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: char.Languages.maxLength,
                label: 'Langauges:',
                maxLines: 8,
              ),
              Row(
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
          );
        },
      ),
    );
  }
}
