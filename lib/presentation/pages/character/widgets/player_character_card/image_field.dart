import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart' as char;

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

  @override
  Widget build(BuildContext context) {
    // var _imagePath = imagePath ?? '';

    return widget.isEditing
        ? Column(
            children: [
              (image != null)
                  ? Container(
                    height: 215,
                    width: double.maxFinite,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(backgroundImage),
                          fit: BoxFit.cover,
                        ),
                      ),
                      // height: 180,
                      // width: 150,
                      child: Image.file(image),
                    )
                  : Stack(
                      children: <Widget>[
                        Image(
                          image: AssetImage(backgroundImage),
                          fit: BoxFit.cover,
                          height: 215,
                        ),
                        Positioned(
                          left: 5,
                          right: 5,
                          top: 180,
                          bottom: 5,
                          child: RaisedButton(
                            child: Text('Select Image'),
                            onPressed: () => pickImage(),
                          ),
                        ),
                      ],
                    ),
              TextFormField(
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
              ),
            ],
          )
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

  pickImage() async {
    final _picker = ImagePicker();
    PickedFile pickedImage;

    pickedImage = await _picker.getImage(source: ImageSource.gallery);
    var file = File(pickedImage.path);

    setState(() {
      image = file;
    });
  }
}
