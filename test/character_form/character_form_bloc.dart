import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart' show Image;
// import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/character_failure.dart';
import 'package:shattered_star/domain/character/i_character_bucket.dart';
import 'package:shattered_star/domain/character/i_character_repository.dart';
import 'package:shattered_star/domain/character/value_objects.dart';

part 'character_form_bloc.freezed.dart';
part 'character_form_event.dart';
part 'character_form_state.dart';

@injectable
class CharacterFormBloc extends Bloc<CharacterFormEvent, CharacterFormState> {
  final ICharacterRepository _characterRepository;
  final ICharacterBucket _characterBucket;

  CharacterFormBloc(this._characterRepository, this._characterBucket) : super(CharacterFormState.initial());

  @override
  Stream<CharacterFormState> mapEventToState(
    CharacterFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialCharacterOption.fold(
          () => state.copyWith(),
          (initialCharacter) => state.copyWith(
            character: initialCharacter,
            characterImage: Image.network('${initialCharacter.imagePath}'),
            isEditing: true,
          ),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(name: Name(e.nameStr)),
          saveFailureOrSuccessOption: none(),
        );
        print(state.character.name.getOrCrash());
      },
      raceChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(race: Race(e.raceStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      favoredClassChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(favoredClass: FavoredClass(e.favoredClassStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      levelChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(level: Level(e.levelStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(gender: Gender(e.genderStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      ageChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(age: Age(e.ageStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      heightChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(height: Height(e.heightStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      weightChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(weight: Weight(e.weightStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      homeChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(home: Home(e.homeStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      alignmentChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(alignment: Alignment(e.alignmentStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      deityChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(deity: Deity(e.deityStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      languagesChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(languages: Languages(e.languagesStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      strengthChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(strength: Strength(e.strengthStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      dexterityChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(dexterity: Dexterity(e.dexterityStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      constitutionChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(constitution: Constitution(e.constitutionStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      intelligenceChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(intelligence: Intelligence(e.intelligenceStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      wisdomChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(wisdom: Wisdom(e.wisdomStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      charismaChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(charisma: Charisma(e.charismaStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      maxHPChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(maxHP: MaxHP(e.maxHPStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      armorClassChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(armorClass: ArmorClass(e.armorClassStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      combatManeuverDefenseChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(combatManeuverDefense: CombatManeuverDefense(e.combatManeuverDefenseStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      meleeModChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(meleeMod: MeleeMod(e.meleeModStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      rangedModChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(rangedMod: RangedMod(e.rangedModStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      combatManeuverBonusChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(combatManeuverBonus: CombatManeuverBonus(e.combatManeuverBonusStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(description: Description(e.descriptionStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      imageChanged: (e) async* {
        yield state.copyWith(
          character: state.character.copyWith(imagePath: ImagePath(e.imageStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      imageButtonPressed: (e) async* {
        String downloadUrl;

        yield state.copyWith(
          imageLoading: true,
          saveFailureOrSuccessOption: none(),
        );

        var pickedImage = await _characterBucket.getImage();

        // await _characterBucket.upload(state.character.id.getOrCrash());

        // downloadUrl = await _characterBucket.getDownloadUrl(state.character.id.getOrCrash());
        // print(downloadUrl);
        yield state.copyWith(
          imageLoading: false,
          characterImage: Image.file(pickedImage),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<CharacterFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.character.failureOption.isNone()) {
          failureOrSuccess = state.isEditing ? await _characterRepository.update(state.character) : await _characterRepository.create(state.character);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}

//TODO: CREATE IMAGE LOADING AND IMAGE LOADED STATES, HAVE STATE SET TO IMAGE LOADING DURING FIREBASE UPLOAD, THEN HAVE STATE SET TO IMAGE LOADED ONCE COMPLETE
