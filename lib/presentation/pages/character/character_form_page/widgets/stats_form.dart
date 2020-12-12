import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/character_form_field_widget.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;


class StatsForm extends StatelessWidget {
  const StatsForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Character editedCharacter;
    String editedCharacterName;

    return Center(
      child: BlocBuilder<CharacterFormBloc, CharacterFormState>(
        // listenWhen: (p, c) => p.isEditing != p.isEditing,
        // listener: (context, state) {},
        builder: (context, state) {
          editedCharacter = state.character;
        editedCharacterName = editedCharacter.name.isValid() ? editedCharacter.name.getOrCrash() : 'your character';

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Now we are going to input $editedCharacterName\'s stats'),
              SizedBox(
                height: 16
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  primary: false,
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  childAspectRatio: 5,
                  children: <Widget>[
                    CharacterFormField(
                      initialValue: editedCharacter.strength.isValid() ? editedCharacter.strength.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.dexterity.isValid() ? editedCharacter.dexterity.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.constitution.isValid() ? editedCharacter.constitution.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.intelligence.isValid() ? editedCharacter.intelligence.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.wisdom.isValid() ? editedCharacter.wisdom.getOrCrash() : '',
                      onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.wisdomChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.wisdom.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'WIS:',
                    ),
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.charisma.isValid() ? editedCharacter.charisma.getOrCrash() : '',
                      onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                          CharacterFormEvent.charismaChanged(value),
                        ),
                    validator: (_) => context.bloc<CharacterFormBloc>().state.character.charisma.value.fold(
                          (f) => f.maybeMap(
                            empty: (f) => 'cannot be empty',
                            invalidNumber: (f) => 'Please enter a number',
                            orElse: () => null,
                          ),
                          (r) => null,
                        ),
                    label: 'CHA:',
                    ),
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.maxHP.isValid() ? editedCharacter.maxHP.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.armorClass.isValid() ? editedCharacter.armorClass.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.combatManeuverDefense.isValid() ? editedCharacter.combatManeuverDefense.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.meleeMod.isValid() ? editedCharacter.meleeMod.getOrCrash() : '',
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
                    // SizedBox(
                    // height: 8,
                    // ),
                    CharacterFormField(
                      initialValue: editedCharacter.rangedMod.isValid() ? editedCharacter.rangedMod.getOrCrash() : '',
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
                    CharacterFormField(
                      initialValue: editedCharacter.combatManeuverBonus.isValid() ? editedCharacter.combatManeuverBonus.getOrCrash() : '',
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
                    label: 'CMB:'
                    ),
                  ],
                ),
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
          );
        },
      ),
    );
  }
}