import 'package:flutter/material.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/presentation/pages/character/character_color_page/widgets/character_color_body.dart';

class CharacterColorPage extends StatelessWidget {
  final Character character;
  CharacterColorPage({Key?key, @required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Colors')),
      body: CharacterColorBody(character: character),
    );
  }
}
