import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/character_form_field_widget.dart';

class NamePlate extends HookWidget {
  final bool isEditing;
  final Character character;

  const NamePlate({
    Key key,
    @required this.isEditing,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return Container(
      // height: 24,
      constraints: !isEditing ? BoxConstraints.expand(height: 42) : null,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: isEditing
          ? BlocListener<CharacterFormBloc, CharacterFormState>(
              listenWhen: (p, c) => p.isEditing != c.isEditing,
              listener: (context, state) {
                textEditingController.text = state.character.name.getOrCrash();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CharacterFormField(
                  controller: textEditingController,
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
                  label: 'Name:',
                ),
              ))
          : Text(
              character.name.getOrCrash(),
              textAlign: TextAlign.center,
            ),
    );
  }
}
