import 'dart:io';
import 'dart:math' as math;

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:palette_generator/palette_generator.dart';

const Color _kBackgroundColor = Color(0xffa0a0a0);
const Color _kPlaceholderColor = Color(0x80404040);

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final _storage = FirebaseStorage.instance;
  String imageUrl;
  File image;
  PaletteGenerator paletteGenerator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            (image != null)
                ? Image.file(image)
                : Placeholder(
                    fallbackHeight: 200,
                    fallbackWidth: double.infinity,
                  ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Pick Image'),
              color: Colors.lightBlue,
              onPressed: pickFile,
            ),
            RaisedButton(
              child: Text('Upload Image'),
              color: Colors.lightBlue,
              onPressed: uploadImage,
            ),
            RaisedButton(
              child: Text('Generate Palette'),
              color: Colors.lightBlue,
              onPressed: generatePalette,
            ),
            PaletteSwatches(
              generator: paletteGenerator,
            ),
          ],
        ),
      ),
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

  pickFile() async {
    File file;
    final FilePickerResult result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      // allowedExtensions: ['png'],
    );

    if (result != null) {
      file = File(result.files.first.path);
    }

    setState(() {
      image = file;
    });
  }

  uploadImage() async {
    if (image != null) {
      //upload to firebase
      var task = _storage.ref().child('player_characters/test2').putFile(image);

// Optional
      task.snapshotEvents.listen((TaskSnapshot snapshot) {
        print('Snapshot state: ${snapshot.state}'); // paused, running, complete
        print('Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
      }, onError: (Object e) {
        print(e); // FirebaseException
      });

// Optional
      await task.then((TaskSnapshot snapshot) async {
        print('Upload complete!');
      }).catchError(print);
    } else {
      print('No Path Recieved');
    }
  }

  generatePalette() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      Image.file(image).image,
      maximumColorCount: 50,
    );
    print(paletteGenerator.colors);
    setState(() {});
  }
}

class PaletteSwatches extends StatelessWidget {
  /// Create a Palette swatch.
  ///
  /// The [generator] is optional. If it is null, then the display will
  /// just be an empty container.
  const PaletteSwatches({Key? key, this.generator}) : super(key: key);

  /// The [PaletteGenerator] that contains all of the swatches that we're going
  /// to display.
  final PaletteGenerator generator;

  @override
  Widget build(BuildContext context) {
    final List<Widget> swatches = <Widget>[];
    if (generator == null || generator.colors.isEmpty) {
      return Container();
    }
    for (Color color in generator.colors) {
      swatches.add(PaletteSwatch(color: color));
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: swatches,
        ),
        Container(height: 30.0),
        PaletteSwatch(label: 'Dominant', color: generator.dominantColor?.color),
        PaletteSwatch(label: 'Light Vibrant', color: generator.lightVibrantColor?.color),
        PaletteSwatch(label: 'Vibrant', color: generator.vibrantColor?.color),
        PaletteSwatch(label: 'Dark Vibrant', color: generator.darkVibrantColor?.color),
        PaletteSwatch(label: 'Light Muted', color: generator.lightMutedColor?.color),
        PaletteSwatch(label: 'Muted', color: generator.mutedColor?.color),
        PaletteSwatch(label: 'Dark Muted', color: generator.darkMutedColor?.color),
      ],
    );
  }
}

@immutable
class PaletteSwatch extends StatelessWidget {
  /// Creates a PaletteSwatch.
  ///
  /// If the [color] argument is omitted, then the swatch will show a
  /// placeholder instead, to indicate that there is no color.
  const PaletteSwatch({
    Key? key,
    this.color,
    this.label,
  }) : super(key: key);

  /// The color of the swatch. May be null.
  final Color color;

  /// The optional label to display next to the swatch.
  final String label;

  @override
  Widget build(BuildContext context) {
    // Compute the "distance" of the color swatch and the background color
    // so that we can put a border around those color swatches that are too
    // close to the background's saturation and lightness. We ignore hue for
    // the comparison.
    final HSLColor hslColor = HSLColor.fromColor(color ?? Colors.transparent);
    final HSLColor backgroundAsHsl = HSLColor.fromColor(_kBackgroundColor);
    final double colorDistance = math.sqrt(math.pow(hslColor.saturation - backgroundAsHsl.saturation, 2.0) + math.pow(hslColor.lightness - backgroundAsHsl.lightness, 2.0));

    Widget swatch = Padding(
      padding: const EdgeInsets.all(2.0),
      child: color == null
          ? const Placeholder(
              fallbackWidth: 34.0,
              fallbackHeight: 20.0,
              color: Color(0xff404040),
              strokeWidth: 2.0,
            )
          : Container(
              decoration: BoxDecoration(
                  color: color,
                  border: Border.all(
                    width: 1.0,
                    color: _kPlaceholderColor,
                    style: colorDistance < 0.2 ? BorderStyle.solid : BorderStyle.none,
                  )),
              width: 34.0,
              height: 20.0,
            ),
    );

    if (label != null) {
      swatch = ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 130.0, minWidth: 130.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            swatch,
            Container(width: 5.0),
            Text(label),
          ],
        ),
      );
    }
    return swatch;
  }
}
