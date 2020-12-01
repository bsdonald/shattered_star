import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final _storage = FirebaseStorage.instance;
  String imageUrl;
  File image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
        automaticallyImplyLeading: true,
      ),
      body: Column(
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
            onPressed: () => pickImage(),
          ),
          RaisedButton(
            child: Text('Upload Image'),
            color: Colors.lightBlue,
            onPressed: () => uploadImage(),
          ),
        ],
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

  uploadImage() async {
    if (image != null) {
      //upload to firebase
      UploadTask task = _storage.ref().child('player_characters/test2').putFile(image);

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
      }).catchError((Object e) {
        print(e); // FirebaseException
      });
    } else {
      print('No Path Recieved');
    }
  }
}
