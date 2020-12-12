import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/auth/i_auth_facade.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/core/errors.dart';
import 'package:shattered_star/injection.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/character_form_field_widget.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

class ImageForm extends StatefulWidget {
  const ImageForm({Key key}) : super(key: key);

  @override
  _ImageFormState createState() => _ImageFormState();
}

class _ImageFormState extends State<ImageForm> {
  var backgroundImage = 'assets/images/forest.jpg';
  File image;
  final _storage = FirebaseStorage.instance;
  String imagePath;
  Character editedCharacter;
  String editedCharacterName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CharacterFormBloc, CharacterFormState>(
        // listenWhen: (p, c) => p.isEditing != p.isEditing,
        // listener: (context, state) {},
        builder: (context, state) {
          editedCharacter = state.character;
          editedCharacterName = editedCharacter.name.isValid() ? editedCharacter.name.getOrCrash() : 'your character';
          imagePath = editedCharacter.imagePath.isValid() ? editedCharacter.imagePath.getOrCrash() : null;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Finally, we need you to pick an image for $editedCharacterName'),
              SizedBox(height: 16),
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
                onPressed: () => pickImage(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.backButtonPressed()),
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.saved()),
                    child: Text('Finish!'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  pickImage() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final _picker = ImagePicker();
    PickedFile pickedImage;
    String downloadURL;

    pickedImage = await _picker.getImage(source: ImageSource.gallery);
    var file = File(pickedImage.path);
    var _reference = _storage.ref().child('users/${user.id.getOrCrash()}/player_characters/test');

    image = file;

    if (image != null) {
      //upload to firebase
      UploadTask task = _reference.putFile(image);

// Optional
      task.snapshotEvents.listen((TaskSnapshot snapshot) {
        print('Snapshot state: ${snapshot.state}'); // paused, running, complete
        print('Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
      }, onError: (Object e) {
        print(e); // FirebaseException
      });

// Optional
      task.then((TaskSnapshot snapshot) async {
        print('Upload complete!');
        downloadURL = await _reference.getDownloadURL();
        context.bloc<CharacterFormBloc>().add(
              CharacterFormEvent.imageChanged(downloadURL),
            );
        imagePath = downloadURL;
      }).catchError((Object e) {
        print(e); // FirebaseException
      });
    } else {
      print('No Path Recieved');
    }

    setState(() {});
  }
}
