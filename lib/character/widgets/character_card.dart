import 'package:flutter/material.dart';

import '../../core/app_theme.dart';
import '../../services/models/character.dart';

Map<String, String> characterBasicInfo(Character character) => {
      'Race': character.race,
      'Favored Class': character.className,
      'Level': '${character.level}',
      'Gender': character.gender,
      'Age': '${character.age}',
      'Height': character.height,
      'Weight': character.weight,
      'Home': character.home,
      'Alignment': character.alignment,
      'Deity': character.deity,
      'Languages': character.languages,
    };

Map<String, String> emptyCharacterBasicInfo() => {
      for (final label in [
        'Race',
        'Favored Class',
        'Level',
        'Gender',
        'Age',
        'Height',
        'Weight',
        'Home',
        'Alignment',
        'Deity',
        'Languages',
      ])
        label: '',
    };

Map<String, String> characterStatValues(CharacterStats stats) => {
      'STR': '${stats.str}',
      'DEX': '${stats.dex}',
      'CON': '${stats.con}',
      'INT': '${stats.intelligence}',
      'WIS': '${stats.wis}',
      'CHA': '${stats.cha}',
      'Max HP': '${stats.maxHp}',
      'AC': '${stats.ac}',
      'CMD': '${stats.cmd}',
      'Melee': '${stats.melee}',
      'Ranged': '${stats.ranged}',
      'CMB': '${stats.cmb}',
    };

Map<String, String> emptyCharacterStatValues() => {
      for (final label in [
        'STR',
        'DEX',
        'CON',
        'INT',
        'WIS',
        'CHA',
        'Max HP',
        'AC',
        'CMD',
        'Melee',
        'Ranged',
        'CMB',
      ])
        label: '',
    };

class BlankCharacterCard extends StatelessWidget {
  const BlankCharacterCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: moss,
          borderRadius: BorderRadius.circular(28),
        ),
        padding: const EdgeInsets.all(16),
        child: Container(
          constraints: const BoxConstraints(minHeight: 560),
          decoration: BoxDecoration(
            color: parchment,
            borderRadius: BorderRadius.circular(22),
          ),
          child: const Center(
            child: Text(
              'New Character',
              style: TextStyle(
                color: ink,
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
}

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    required this.character,
    required this.name,
    required this.isEditing,
    required this.nameController,
    required this.onEdit,
    required this.basicInfo,
    required this.isEditingBasicInfo,
    required this.onEditBasicInfo,
    required this.onBasicInfoChanged,
    required this.stats,
    required this.isEditingStats,
    required this.onEditStats,
    required this.onStatsChanged,
    super.key,
  });

  final Character? character;
  final String name;
  final bool isEditing;
  final TextEditingController nameController;
  final VoidCallback onEdit;
  final Map<String, String> basicInfo;
  final bool isEditingBasicInfo;
  final VoidCallback onEditBasicInfo;
  final void Function(String label, String value) onBasicInfoChanged;
  final Map<String, String> stats;
  final bool isEditingStats;
  final VoidCallback onEditStats;
  final void Function(String label, String value) onStatsChanged;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: character?.color ?? moss,
          borderRadius: BorderRadius.circular(28),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: parchment,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(52, 18, 52, 18),
                    child: isEditing
                        ? TextField(
                            controller: nameController,
                            autofocus: true,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: ink,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: const TextStyle(color: moss),
                              floatingLabelStyle: const TextStyle(color: ember),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              filled: true,
                              fillColor: parchment,
                              isDense: true,
                              contentPadding: const EdgeInsets.fromLTRB(
                                8,
                                9,
                                8,
                                4,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: moss),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: ember, width: 2),
                              ),
                            ),
                          )
                        : Text(
                            name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: ink,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),
                  if (!isEditing)
                    Positioned(
                      top: 4,
                      right: 4,
                      child: IconButton(
                        onPressed: onEdit,
                        tooltip: 'Edit name',
                        color: ink,
                        icon: const Icon(Icons.edit),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CharacterIdentity(
              character: character,
              values: basicInfo,
              isEditing: isEditingBasicInfo,
              onEdit: onEditBasicInfo,
              onValueChanged: onBasicInfoChanged,
            ),
            const SizedBox(height: 16),
            StatBar(
              values: stats,
              isEditing: isEditingStats,
              onEdit: onEditStats,
              onValueChanged: onStatsChanged,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(18),
              constraints: const BoxConstraints(minHeight: 220),
              decoration: BoxDecoration(
                color: parchment,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Text(
                character?.bio ?? '',
                style: const TextStyle(color: ink, fontSize: 17, height: 1.45),
              ),
            ),
          ],
        ),
      );
}

class CharacterIdentity extends StatelessWidget {
  const CharacterIdentity({
    required this.character,
    required this.values,
    required this.isEditing,
    required this.onEdit,
    required this.onValueChanged,
    super.key,
  });

  final Character? character;
  final Map<String, String> values;
  final bool isEditing;
  final VoidCallback onEdit;
  final void Function(String label, String value) onValueChanged;

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: character == null
                    ? const SizedBox.shrink()
                    : Image.asset(character!.image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 6,
              child: Container(
                height: isEditing ? null : 420,
                padding: const EdgeInsets.all(12),
                color: parchment,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.zero,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: isEditing ? 0 : double.infinity,
                        ),
                        child: Column(
                          mainAxisAlignment: isEditing
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: values.entries
                              .map(
                                (entry) => _InfoLine(
                                  entry.key,
                                  entry.value,
                                  isEditing: isEditing,
                                  onChanged: (value) =>
                                      onValueChanged(entry.key, value),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                    if (!isEditing)
                      Positioned(
                        top: -8,
                        right: -8,
                        child: IconButton(
                          onPressed: onEdit,
                          tooltip: 'Edit basic info',
                          color: ink,
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

class _InfoLine extends StatelessWidget {
  const _InfoLine(
    this.label,
    this.value, {
    required this.isEditing,
    required this.onChanged,
  });

  final String label;
  final String value;
  final bool isEditing;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: isEditing
            ? TextFormField(
                key: ValueKey('$label-$value'),
                initialValue: value,
                onChanged: onChanged,
                style: const TextStyle(color: ink, fontSize: 14),
                decoration: InputDecoration(
                  labelText: label,
                  labelStyle: const TextStyle(color: moss),
                  floatingLabelStyle: const TextStyle(color: ember),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  filled: true,
                  fillColor: parchment,
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(8, 9, 8, 4),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: moss),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: ember, width: 2),
                  ),
                ),
              )
            : Row(
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
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: ink, fontSize: 14),
                    ),
                  ),
                ],
              ),
      );
}

class StatBar extends StatelessWidget {
  const StatBar({
    required this.values,
    required this.isEditing,
    required this.onEdit,
    required this.onValueChanged,
    super.key,
  });

  final Map<String, String> values;
  final bool isEditing;
  final VoidCallback onEdit;
  final void Function(String label, String value) onValueChanged;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.fromLTRB(20, 12, 12, 12),
        decoration: BoxDecoration(
          color: parchment,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: DefaultTextStyle.merge(
                style: const TextStyle(color: ink, fontSize: 14, height: 1.7),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _StatColumn(
                        ['STR', 'DEX', 'CON'],
                        values: values,
                        isEditing: isEditing,
                        onChanged: onValueChanged,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _StatColumn(
                        ['INT', 'WIS', 'CHA'],
                        values: values,
                        isEditing: isEditing,
                        onChanged: onValueChanged,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _StatColumn(
                        ['Max HP', 'AC', 'CMD'],
                        values: values,
                        alignEnd: true,
                        isEditing: isEditing,
                        onChanged: onValueChanged,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: _StatColumn(
                        ['Melee', 'Ranged', 'CMB'],
                        values: values,
                        alignEnd: true,
                        isEditing: isEditing,
                        onChanged: onValueChanged,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 40,
              child: isEditing
                  ? null
                  : Align(
                      alignment: Alignment.topRight,
                      child: Transform.translate(
                        offset: const Offset(0, -8),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: onEdit,
                          tooltip: 'Edit stats',
                          color: ink,
                          icon: const Icon(Icons.edit),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      );
}

class _StatColumn extends StatelessWidget {
  const _StatColumn(
    this.labels, {
    required this.values,
    required this.isEditing,
    required this.onChanged,
    this.alignEnd = false,
  });

  final List<String> labels;
  final Map<String, String> values;
  final bool isEditing;
  final void Function(String label, String value) onChanged;
  final bool alignEnd;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: labels
            .map(
              (label) => isEditing
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: TextFormField(
                        key: ValueKey('$label-${values[label]}'),
                        initialValue: values[label],
                        onChanged: (value) => onChanged(label, value),
                        textAlign: alignEnd ? TextAlign.right : TextAlign.left,
                        style: const TextStyle(color: ink, fontSize: 14),
                        decoration: InputDecoration(
                          labelText: label,
                          labelStyle: const TextStyle(color: moss),
                          floatingLabelStyle: const TextStyle(color: ember),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          filled: true,
                          fillColor: parchment,
                          isDense: true,
                          contentPadding: const EdgeInsets.fromLTRB(8, 9, 8, 4),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: moss),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ember, width: 2),
                          ),
                        ),
                      ),
                    )
                  : Text('${label}: ${values[label]}'),
            )
            .toList(),
      );
}
