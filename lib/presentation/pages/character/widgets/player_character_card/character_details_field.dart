import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/character_form_field_widget.dart';

class CharacterDetailsField extends HookWidget {
  final bool isEditing;
  final Character character;
  final Color color;

  const CharacterDetailsField({
    Key key,
    @required this.isEditing,
    @required this.character,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      // height: 300,
      // width: 180,
      color: color,
      child: SingleChildScrollView(
        child: isEditing ? DetailBlocForm() : DetailBlocList(character: character),
      ),
    );
  }
}

class DetailBlocList extends StatelessWidget {
  const DetailBlocList({
    Key key,
    @required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Favored Class:'),
            Text(character.favoredClass.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Level:'),
            Text(character.level.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Gender:'),
            Text(character.gender.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Age:'),
            Text(character.age.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Height:'),
            Text(character.height.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Weight:'),
            Text(character.weight.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Home:'),
            Text(character.home.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Alignment:'),
            Text(character.alignment.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Deity:'),
            Text(character.deity.getOrCrash()),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
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
    );
  }
}

class DetailBlocForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final raceEditingController = useTextEditingController();
    final favoredClassEditingController = useTextEditingController();
    final levelEditingController = useTextEditingController();
    final genderEditingController = useTextEditingController();
    final ageEditingController = useTextEditingController();
    final heightEditingController = useTextEditingController();
    final weightEditingController = useTextEditingController();
    final homeEditingController = useTextEditingController();
    final alignmentEditingController = useTextEditingController();
    final deityEditingController = useTextEditingController();
    final languagesEditingController = useTextEditingController();

    return BlocListener<CharacterFormBloc, CharacterFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        raceEditingController.text = state.character.race.getOrCrash();
        favoredClassEditingController.text = state.character.favoredClass.getOrCrash();
        levelEditingController.text = state.character.level.getOrCrash();
        genderEditingController.text = state.character.gender.getOrCrash();
        ageEditingController.text = state.character.age.getOrCrash();
        heightEditingController.text = state.character.height.getOrCrash();
        weightEditingController.text = state.character.weight.getOrCrash();
        homeEditingController.text = state.character.home.getOrCrash();
        alignmentEditingController.text = state.character.alignment.getOrCrash();
        deityEditingController.text = state.character.deity.getOrCrash();
        languagesEditingController.text = state.character.languages.getOrCrash();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CharacterFormField(
            controller: raceEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.raceChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.race.value.fold(
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
          CharacterFormField(
            controller: favoredClassEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.favoredClassChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.favoredClass.value.fold(
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
          CharacterFormField(
            controller: levelEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.levelChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.level.value.fold(
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
          CharacterFormField(
            controller: genderEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.genderChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.gender.value.fold(
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
          CharacterFormField(
            controller: ageEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.ageChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.age.value.fold(
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
          CharacterFormField(
            controller: heightEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.heightChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.height.value.fold(
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
          CharacterFormField(
            controller: weightEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.weightChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.weight.value.fold(
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
          CharacterFormField(
            controller: homeEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.homeChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.home.value.fold(
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
          CharacterFormField(
            controller: alignmentEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.alignmentChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.alignment.value.fold(
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
          CharacterFormField(
            controller: deityEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.deityChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.deity.value.fold(
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
          CharacterFormField(
            controller: languagesEditingController,
            onChanged: (value) => context.read<CharacterFormBloc>().add(
                  CharacterFormEvent.languagesChanged(value),
                ),
            validator: (_) => context.read<CharacterFormBloc>().state.character.languages.value.fold(
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
        ],
      ),
    );
  }
}
