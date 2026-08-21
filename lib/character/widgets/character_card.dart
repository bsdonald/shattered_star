import 'package:flutter/material.dart';

import '../../core/app_theme.dart';
import '../../services/models/character.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({required this.character, super.key});
  final Character character;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: character.color,
      borderRadius: BorderRadius.circular(28),
    ),
    padding: const EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            color: parchment,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Text(
            character.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: ink,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 16),
        CharacterIdentity(character: character),
        const SizedBox(height: 16),
        StatBar(stats: character.stats),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(18),
          constraints: const BoxConstraints(minHeight: 220),
          decoration: BoxDecoration(
            color: parchment,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Text(
            character.bio,
            style: const TextStyle(color: ink, fontSize: 17, height: 1.45),
          ),
        ),
      ],
    ),
  );
}

class CharacterIdentity extends StatelessWidget {
  const CharacterIdentity({required this.character, super.key});
  final Character character;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        flex: 5,
        child: AspectRatio(
          aspectRatio: .78,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(character.image, fit: BoxFit.cover),
          ),
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        flex: 6,
        child: Container(
          padding: const EdgeInsets.all(12),
          color: parchment,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _InfoLine('Race', character.race),
              _InfoLine('Favored Class', character.className),
              _InfoLine('Level', '${character.level}'),
              _InfoLine('Gender', character.gender),
              _InfoLine('Age', '${character.age}'),
              _InfoLine('Height', character.height),
              _InfoLine('Weight', character.weight),
              _InfoLine('Home', character.home),
              _InfoLine('Alignment', character.alignment),
              _InfoLine('Deity', character.deity),
              _InfoLine('Languages', character.languages),
            ],
          ),
        ),
      ),
    ],
  );
}

class _InfoLine extends StatelessWidget {
  const _InfoLine(this.label, this.value);
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            '$label:',
            style: const TextStyle(color: ink, fontSize: 14),
          ),
        ),
        Flexible(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(color: ink, fontSize: 14),
          ),
        ),
      ],
    ),
  );
}

class StatBar extends StatelessWidget {
  const StatBar({required this.stats, super.key});
  final CharacterStats stats;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    color: parchment,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          [
                Expanded(
                  child: _StatColumn([
                    'STR: ${stats.str}',
                    'DEX: ${stats.dex}',
                    'CON: ${stats.con}',
                  ]),
                ),
                Expanded(
                  child: _StatColumn([
                    'INT: ${stats.intelligence}',
                    'WIS: ${stats.wis}',
                    'CHA: ${stats.cha}',
                  ]),
                ),
                Expanded(
                  flex: 2,
                  child: _StatColumn([
                    'Max HP: ${stats.maxHp}',
                    'AC: ${stats.ac}',
                    'CMD: ${stats.cmd}',
                  ], alignEnd: true),
                ),
                Expanded(
                  flex: 2,
                  child: _StatColumn([
                    'Melee: ${stats.melee}',
                    'Ranged: ${stats.ranged}',
                    'CMB: ${stats.cmb}',
                  ], alignEnd: true),
                ),
              ]
              .map(
                (column) => DefaultTextStyle.merge(
                  style: const TextStyle(color: ink, fontSize: 14, height: 1.7),
                  child: column,
                ),
              )
              .toList(),
    ),
  );
}

class _StatColumn extends StatelessWidget {
  const _StatColumn(this.values, {this.alignEnd = false});
  final List<String> values;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: alignEnd
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start,
    children: values.map(Text.new).toList(),
  );
}
