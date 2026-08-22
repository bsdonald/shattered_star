import 'package:flutter/material.dart';

import '../services/models/character.dart';
import 'widgets/character_card.dart';

enum _EditSection { none, name, basicInfo, stats, all }

class CharacterDetailPage extends StatefulWidget {
  const CharacterDetailPage({required this.character, super.key});

  const CharacterDetailPage.blank({super.key}) : character = null;

  final Character? character;

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  late final TextEditingController _nameController;
  late String _savedName;
  late Map<String, String> _savedBasicInfo;
  late Map<String, String> _draftBasicInfo;
  late Map<String, String> _savedStats;
  late Map<String, String> _draftStats;
  late _EditSection _editSection;

  @override
  void initState() {
    super.initState();
    _savedName = widget.character?.name ?? '';
    _nameController = TextEditingController(text: _savedName);
    _savedBasicInfo = widget.character == null
        ? emptyCharacterBasicInfo()
        : characterBasicInfo(widget.character!);
    _draftBasicInfo = Map.of(_savedBasicInfo);
    _savedStats = widget.character == null
        ? emptyCharacterStatValues()
        : characterStatValues(widget.character!.stats);
    _draftStats = Map.of(_savedStats);
    _editSection =
        widget.character == null ? _EditSection.all : _EditSection.none;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _startEditing() {
    _nameController.text = _savedName;
    setState(() => _editSection = _EditSection.name);
  }

  void _startEditingBasicInfo() {
    _draftBasicInfo = Map.of(_savedBasicInfo);
    setState(() => _editSection = _EditSection.basicInfo);
  }

  void _startEditingStats() {
    _draftStats = Map.of(_savedStats);
    setState(() => _editSection = _EditSection.stats);
  }

  void _cancelEditing() {
    if (widget.character == null) {
      Navigator.of(context).pop();
      return;
    }
    if (_editSection == _EditSection.name) {
      _nameController.text = _savedName;
    } else if (_editSection == _EditSection.basicInfo) {
      _draftBasicInfo = Map.of(_savedBasicInfo);
    } else if (_editSection == _EditSection.stats) {
      _draftStats = Map.of(_savedStats);
    } else {
      _nameController.text = _savedName;
      _draftBasicInfo = Map.of(_savedBasicInfo);
      _draftStats = Map.of(_savedStats);
    }
    setState(() => _editSection = _EditSection.none);
  }

  void _saveEditing() {
    if (_editSection == _EditSection.all) {
      setState(() {
        _savedName = _nameController.text.trim();
        _savedBasicInfo = Map.of(_draftBasicInfo);
        _savedStats = Map.of(_draftStats);
        _editSection = _EditSection.none;
      });
      return;
    }
    if (_editSection == _EditSection.name) {
      final name = _nameController.text.trim();
      if (name.isEmpty) return;
      setState(() {
        _savedName = name;
        _editSection = _EditSection.none;
      });
      return;
    }
    if (_editSection == _EditSection.basicInfo) {
      setState(() {
        _savedBasicInfo = Map.of(_draftBasicInfo);
        _editSection = _EditSection.none;
      });
    } else {
      setState(() {
        _savedStats = Map.of(_draftStats);
        _editSection = _EditSection.none;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Character')),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 88),
              children: [
                CharacterCard(
                  character: widget.character,
                  name: _savedName,
                  isEditing: _editSection == _EditSection.name ||
                      _editSection == _EditSection.all,
                  nameController: _nameController,
                  onEdit: _startEditing,
                  basicInfo: _editSection == _EditSection.basicInfo ||
                          _editSection == _EditSection.all
                      ? _draftBasicInfo
                      : _savedBasicInfo,
                  isEditingBasicInfo: _editSection == _EditSection.basicInfo ||
                      _editSection == _EditSection.all,
                  onEditBasicInfo: _startEditingBasicInfo,
                  onBasicInfoChanged: (label, value) {
                    _draftBasicInfo[label] = value;
                  },
                  stats: _editSection == _EditSection.stats ||
                          _editSection == _EditSection.all
                      ? _draftStats
                      : _savedStats,
                  isEditingStats: _editSection == _EditSection.stats ||
                      _editSection == _EditSection.all,
                  onEditStats: _startEditingStats,
                  onStatsChanged: (label, value) {
                    _draftStats[label] = value;
                  },
                ),
              ],
            ),
            if (_editSection != _EditSection.none)
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _cancelEditing,
                        child: const Text('Cancel'),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: FilledButton(
                        onPressed: _saveEditing,
                        child: const Text('Save'),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      );
}
