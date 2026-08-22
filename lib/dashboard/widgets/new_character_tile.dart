import 'package:flutter/material.dart';

import '../../character/character_detail_page.dart';

class NewCharacterTile extends StatelessWidget {
  const NewCharacterTile({super.key});

  @override
  Widget build(BuildContext context) => InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const CharacterDetailPage.blank()),
        ),
        child: Container(
          height: 132,
          decoration: BoxDecoration(
            color: const Color(0xFF252B28),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withValues(alpha: .25)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add, size: 28),
              SizedBox(width: 10),
              Text(
                'New Character',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
}
