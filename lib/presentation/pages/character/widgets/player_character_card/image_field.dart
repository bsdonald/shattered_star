import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

class ImageField extends StatelessWidget {
  final bool isEditing;
  const ImageField({
    Key key,
    this.isEditing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var backgroundImage = 'assets/images/forest.jpg';
    // var _imagePath = imagePath ?? '';

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      // height: 180,
      // width: 150,
      child: isEditing
          ? TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                labelText: 'Image Link:',
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
                    CharacterFormEvent.imageChanged(value),
                  ),
              validator: (_) => context.bloc<CharacterFormBloc>().state.character.imagePath.value.fold(
                    (f) => f.maybeMap(
                      empty: (f) => 'cannot be empty',
                      exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
              maxLength: char.ImagePath.maxLength,
              minLines: 1,
              maxLines: 8,
            )
          : Image.network('https://firebasestorage.googleapis.com/v0/b/shattered-star.appspot.com/o/player_characters%2Freily.png?alt=media&token=9c93fcdf-5c04-4b8b-b62f-a5fc72e30b81'),
    );
  }
}
