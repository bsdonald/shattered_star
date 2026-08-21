import 'package:flutter/material.dart';

import '../../character/character_detail_page.dart';
import '../../services/models/character.dart';

class CharacterTile extends StatelessWidget {
  const CharacterTile({required this.character, super.key});

  final Character character;

  @override
  Widget build(BuildContext context) => InkWell(
    borderRadius: BorderRadius.circular(20),
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CharacterDetailPage(character: character),
      ),
    ),
    child: Container(
      height: 132,
      decoration: BoxDecoration(
        color: const Color(0xFF252B28),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: character.color.withOpacity(.55)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20),
            ),
            child: SizedBox(
              width: 112,
              height: double.infinity,
              child: Image.asset(character.image, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    character.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${character.race} · ${character.className}',
                    style: TextStyle(color: character.color),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Level ${character.level}  ·  HP ${character.stats.maxHp}  ·  AC ${character.stats.ac}',
                    style: TextStyle(color: Colors.white.withOpacity(.6)),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18),
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
    ),
  );
}
