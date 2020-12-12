import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/character.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/domain/enum/form_block.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/bio_form.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/details_form.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/image_form.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/name_form.dart';
import 'package:shattered_star/presentation/pages/character/character_form_page/widgets/stats_form.dart';

class CharacterFormBody extends StatelessWidget {
  const CharacterFormBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterFormBloc, CharacterFormState>(
      // buildWhen: (p, c) => p.formBlock != c.formBlock,
      builder: (context, state) {
        return buildSwitch(context, state.formBlock);
      },
    );
  }

  Widget buildSwitch(BuildContext context, formBlock) {
    switch (formBlock) {
      case FormBlock.NameBlock:
        return NameForm();
        break;
      case FormBlock.StatBlock:
        return StatsForm();

        break;
      case FormBlock.DetailBlock:
        return DetailsForm();
        break;
      case FormBlock.BioBlock:
        return BioForm();
        break;
      case FormBlock.ImageBlock:
        return ImageForm();
        break;
    }
    return Text('hello World');
  }
}
