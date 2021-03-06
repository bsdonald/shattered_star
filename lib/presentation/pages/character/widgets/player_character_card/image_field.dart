import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';

class ImageField extends StatelessWidget {
  final bool isEditing;
  final Character character;
  const ImageField({
    Key key,
    @required this.character,
    @required this.isEditing,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
   const backgroundImage = 'assets/images/forest.jpg';
  Image image;
  String imagePath;
    return isEditing
        ? BlocConsumer<CharacterFormBloc, CharacterFormState>(
            // listenWhen: (p, c) => p.isEditing || p.imageLoading != c.isEditing || c.imageLoading,
            listener: (context, state) {
              imagePath = state.character.imagePath.getOrCrash();
              image = Image.network(imagePath);
            },
            builder: (context, state) {
              print('image: $image');
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    onPressed: (state.isEditing)
                        ? () {
                            context.bloc<CharacterFormBloc>().add(CharacterFormEvent.imageButtonPressed());
                            context.bloc<CharacterFormBloc>().add(CharacterFormEvent.saved());
                          }
                        : () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.imageButtonPressed()),
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
            child: Image.network(character.imagePath.getOrCrash()),
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
