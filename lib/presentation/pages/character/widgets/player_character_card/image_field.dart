import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';

class ImageField extends StatefulWidget {
  final bool isEditing;
  final Character character;
  const ImageField({
    Key key,
    @required this.character,
    @required this.isEditing,
  }) : super(key: key);

  @override
  _ImageFieldState createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  var backgroundImage = 'assets/images/forest.jpg';
  File image;
  final _storage = FirebaseStorage.instance;
  String imagePath;
  String characterName;
  String characterId;

  @override
  Widget build(BuildContext context) {
    return widget.isEditing
        ? BlocConsumer<CharacterFormBloc, CharacterFormState>(
            listenWhen: (p, c) => p.isEditing != c.isEditing,
            listener: (context, state) {
              imagePath = state.character.imagePath.getOrCrash();
              characterName = state.character.name.getOrCrash();
              characterId = state.character.id.getOrCrash();
            },
            builder: (context, state) {
              return Column(
                children: [
                  (imagePath != null)
                      ? Container(
                          height: 215,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(backgroundImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // height: 180,
                          // width: 150,
                          child: Image.network(imagePath),
                        )
                      : Container(
                          child: Image(
                            image: AssetImage(backgroundImage),
                            fit: BoxFit.cover,
                            height: 215,
                          ),
                        ),
                  RaisedButton(
                    child: Text('Select Image'),
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.uploadButtonPressed()),
                  ),
                ],
              );
            })
        : Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            // height: 180,
            // width: 150,
            child: Image.network(widget.character.imagePath.getOrCrash()),
          );
  }
}

// TextFormField(
//   textAlign: TextAlign.center,
//   decoration: InputDecoration(
//     contentPadding: EdgeInsets.all(0),
//     labelText: 'Image Link:',
//     counterText: '',
//     fillColor: Colors.white,
//     filled: true,
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(20),
//         bottomRight: Radius.circular(20),
//       ),
//     ),
//   ),
//   onChanged: (value) => context.bloc<CharacterFormBloc>().add(
//         CharacterFormEvent.imageChanged(value),
//       ),
//   validator: (_) => context.bloc<CharacterFormBloc>().state.character.imagePath.value.fold(
//         (f) => f.maybeMap(
//           empty: (f) => 'cannot be empty',
//           exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
//           orElse: () => null,
//         ),
//         (r) => null,
//       ),
//   maxLength: char.ImagePath.maxLength,
//   minLines: 1,
//   maxLines: 8,
// ),
