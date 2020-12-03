import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

class CharacterBio extends HookWidget {
  final bool isEditing;
  final Character character;

  const CharacterBio({
    Key key,
    @required this.isEditing,
    @required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return Container(
      padding: EdgeInsets.all(8),
      constraints: BoxConstraints.expand(height: 290),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: isEditing
            ? BlocListener<CharacterFormBloc, CharacterFormState>(
                listenWhen: (p, c) => p.isEditing != c.isEditing,
                listener: (context, state) {
                  textEditingController.text = state.character.description.getOrCrash();
                },
                child: TextFormField(
                  controller: textEditingController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    labelText: 'Bio:',
                    counterText: '',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
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
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bio:',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    child: Text(
                      character.description.getOrCrash(),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
