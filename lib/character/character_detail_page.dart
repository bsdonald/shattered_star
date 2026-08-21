import 'package:flutter/material.dart';

import '../services/models/character.dart';
import 'widgets/character_card.dart';

class CharacterDetailPage extends StatelessWidget {
  const CharacterDetailPage({required this.character, super.key});

  final Character character;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Character')),
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: [CharacterCard(character: character)],
    ),
  );
}
