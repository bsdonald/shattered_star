import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';

class CharacterStatsField extends StatelessWidget {
  final bool isEditing;

  const CharacterStatsField({
    Key key,
    this.isEditing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 900,
      color: Colors.amber,
      child: isEditing ? StatBlocForm() : StatBlocGrid(),
    );
  }
}

class StatBlocGrid extends StatelessWidget {
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
              Text('STR: 20'),
              Text('DEX: 15'),
              Text('CON: 12'),
            ],
          )
              // height: 600,
              ),
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('INT: 12'),
              Text('WIS: 18'),
              Text('CHA: 13'),
            ],
          )
              // height: 600,
              ),
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Max HP: 22'),
              Text('AC: 18'),
              Text('CMD: +23'),
            ],
          )
              // height: 600,
              ),
          Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text('Melee: +7'),
              Text('Ranged: +4'),
              Text('CMB: +7'),
            ],
          )
              // height: 600,
              ),
        ],
      ),
    );
  }
}

class StatBlocForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class StatsFormField extends StatelessWidget {
  final Function onChanged;
  final Function validator;
  final String label;
  final int maxLength;
  final int maxLines;
  const StatsFormField({
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
      // constraints: BoxConstraints.expand(width: 60, height: 24),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextFormField(
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
