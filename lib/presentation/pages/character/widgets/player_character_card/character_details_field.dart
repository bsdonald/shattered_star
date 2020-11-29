import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

class CharacterDetailsField extends StatelessWidget {
  final bool isEditing;
  final Character character;

  const CharacterDetailsField({
    Key key,
    @required this.isEditing,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      // height: 300,
      // width: 180,
      color: Colors.amber,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(child: Text('Race:')),
                      Text(character.race.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Favored Class:'),
                      Text(character.favoredClass.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Level:'),
                      Text(character.level.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Gender:'),
                      Text(character.gender.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Age:'),
                      Text(character.age.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Height:'),
                      Text(character.height.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Weight:'),
                      Text(character.weight.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Home:'),
                      Text(character.home.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Alignment:'),
                      Text(character.alignment.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Deity:'),
                      Text(character.deity.getOrCrash()),
                    ],
                  ),
            SizedBox(
              height: 8,
            ),
            isEditing
                ? DetailsFormField(
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
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text('Languages:'),
                      Flexible(
                        child: Text(
                          character.languages.getOrCrash(),
                          textAlign: TextAlign.end,
                          // maxLines: 8,
                          // overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

class DetailsFormField extends StatelessWidget {
  final Function onChanged;
  final Function validator;
  final String label;
  final int maxLength;
  final int maxLines;
  const DetailsFormField({
    Key key,
    @required this.onChanged,
    @required this.validator,
    @required this.label,
    this.maxLines = 1,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.expand(height: 24),
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          labelText: label,
          counterText: '',
          fillColor: Colors.white,
          filled: true,
        ),
        onChanged: onChanged,
        validator: validator,
        maxLength: maxLength,
        maxLines: maxLines,
        minLines: 1,
      ),
    );
  }
}