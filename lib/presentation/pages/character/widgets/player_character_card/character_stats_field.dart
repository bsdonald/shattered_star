import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';

class CharacterStatsField extends StatelessWidget {
  final bool isEditing;
  final Character character;

  const CharacterStatsField({
    Key key,
    @required this.isEditing,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 900,
      color: Colors.amber,
      child: isEditing ? StatBlocForm() : StatBlocGrid(character: character),
    );
  }
}

class StatBlocGrid extends StatelessWidget {
  final Character character;

  const StatBlocGrid({
    Key key,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('STR: ${character.strength.getOrCrash()}'),
              Text('DEX: ${character.dexterity.getOrCrash()}'),
              Text('CON: ${character.constitution.getOrCrash()}'),
            ],
          )
              // height: 600,
              ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('INT: ${character.intelligence.getOrCrash()}'),
              Text('WIS: ${character.wisdom.getOrCrash()}'),
              Text('CHA: ${character.charisma.getOrCrash()}'),
            ],
          )
              // height: 600,
              ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Max HP: ${character.maxHP.getOrCrash()}'),
              Text('AC: ${character.armorClass.getOrCrash()}'),
              Text('CMD: ${character.combatManeuverDefense.getOrCrash()}'),
            ],
          )
              // height: 600,
              ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Melee: ${character.meleeMod.getOrCrash()}'),
              Text('Ranged: ${character.rangedMod.getOrCrash()}'),
              Text('CMB: ${character.combatManeuverBonus.getOrCrash()}'),
            ],
          )
              // height: 600,
              ),
        ],
      ),
    );
  }
}

class StatBlocForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final strengthEditingController = useTextEditingController();
    final dexterityEditingController = useTextEditingController();
    final constitutionEditingController = useTextEditingController();
    final intelligenceEditingController = useTextEditingController();
    final wisdomEditingController = useTextEditingController();
    final charismaEditingController = useTextEditingController();
    final maxHPEditingController = useTextEditingController();
    final armorClassEditingController = useTextEditingController();
    final combatManeuverDefenseEditingController = useTextEditingController();
    final meleeModEditingController = useTextEditingController();
    final rangedModEditingController = useTextEditingController();
    final combatManeuverBonusEditingController = useTextEditingController();


    return BlocListener<CharacterFormBloc, CharacterFormState>(
        listenWhen: (p, c) => p.isEditing != c.isEditing,
        listener: (context, state) {
          strengthEditingController.text = state.character.strength.getOrCrash();
          dexterityEditingController.text = state.character.dexterity.getOrCrash();
          constitutionEditingController.text = state.character.constitution.getOrCrash();
          intelligenceEditingController.text = state.character.intelligence.getOrCrash();
          wisdomEditingController.text = state.character.wisdom.getOrCrash();
          charismaEditingController.text = state.character.charisma.getOrCrash();
          maxHPEditingController.text = state.character.maxHP.getOrCrash();
          armorClassEditingController.text = state.character.armorClass.getOrCrash();
          combatManeuverDefenseEditingController.text = state.character.combatManeuverDefense.getOrCrash();
          meleeModEditingController.text = state.character.meleeMod.getOrCrash();
          rangedModEditingController.text = state.character.rangedMod.getOrCrash();
          combatManeuverBonusEditingController.text = state.character.combatManeuverBonus.getOrCrash();
        },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Container(
                  // // width: 75,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  StatsFormField(
                    controller: strengthEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.strengthChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.strength.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'STR:',
                  ),
                  StatsFormField(
                    controller: dexterityEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.dexterityChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.dexterity.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'DEX:',
                  ),
                  StatsFormField(
                    controller: constitutionEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.constitutionChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.constitution.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'CON:',
                  ),
                ],
              )
                  // height: 600,
                  ),
            ),
            Flexible(
              child: Container(
                  // width: 75,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  StatsFormField(
                    controller: intelligenceEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.intelligenceChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.intelligence.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'INT:',
                  ),
                  StatsFormField(
                    controller: wisdomEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.wisdomChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.strength.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'WIS:',
                  ),
                  StatsFormField(
                    controller: charismaEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.charismaChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.strength.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'CHA:',
                  ),
                ],
              )
                  // height: 600,
                  ),
            ),
            Flexible(
              child: Container(
                  // width: 75,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  StatsFormField(
                    controller: maxHPEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.maxHPChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.maxHP.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'Max HP:',
                  ),
                  StatsFormField(
                    controller: armorClassEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.armorClassChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.armorClass.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'AC:',
                  ),
                  StatsFormField(
                    controller: combatManeuverDefenseEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.combatManeuverDefenseChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.combatManeuverDefense.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'CMD:',
                  ),
                ],
              )
                  // height: 600,
                  ),
            ),
            Flexible(
              child: Container(
                  // width: 75,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  StatsFormField(
                    controller: meleeModEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.meleeModChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.meleeMod.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'Melee:',
                  ),
                  StatsFormField(
                    controller: rangedModEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.rangedModChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.rangedMod.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'Ranged:',
                  ),
                  StatsFormField(
                    controller: combatManeuverBonusEditingController,
                    onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.combatManeuverBonusChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.combatManeuverBonus.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'CMB:',
                  ),
                ],
              )
                  // height: 600,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatsFormField extends StatelessWidget {
  final Function onChanged;
  final Function validator;
  final String label;
  final int maxLength;
  final int maxLines;
  final TextEditingController controller;
  const StatsFormField(
    {
    Key key,
    @required this.onChanged,
    @required this.validator,
    @required this.label,
    @required this.controller,
    this.maxLines = 1,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints.expand(width: 60, height: 24),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextFormField(
          controller: controller,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            labelText: label,
            counterText: '',
            filled: true,
            fillColor: Colors.white,
          ),
          onChanged: onChanged,
          validator: validator,
          maxLength: maxLength,
          maxLines: maxLines,
          minLines: 1,
        ),
      ),
    );
  }
}
