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
  Image image;
  final _storage = FirebaseStorage.instance;
  String imagePath;
  String characterName;
  String characterId;

  @override
  Widget build(BuildContext context) {
    return widget.isEditing
        ? BlocConsumer<CharacterFormBloc, CharacterFormState>(
            listenWhen: (p, c) => p.isEditing || p.imageLoading != c.isEditing || c.imageLoading,
            listener: (context, state) {
              image = state.characterImage;
              imagePath = state.character.imagePath.toString();
              characterName = state.character.name.getOrCrash();
              characterId = state.character.id.getOrCrash();
            },
            builder: (context, state) {
              print('image: $image');
              return Column(
                children: [
                  Container(
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
                    child: image ?? Text('Failed to load image'),
                  ),
                  RaisedButton(
                    child: Text('Select Image'),
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.imageButtonPressed()),
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
            child: image,
          );
  }
}

// BlocProvider<CharacterFormBloc>(
//                         create: (context) => getIt<CharacterFormBloc>(),
//                       );
//                       showModalBottomSheet(
//                         context: context,
//                         backgroundColor: Colors.transparent,
//                         builder: (context) => ImageBottomSheet(),
//                       );

// () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.imageButtonPressed())

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
