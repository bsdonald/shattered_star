import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/domain/character/value_objects.dart';
import 'package:shattered_star/domain/enum/form_block.dart';

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
        return Center(
          child: Column(
            children: <Widget>[
              Text('Enter your Character\'s Name'),
              TextFormField(
                // controller: textEditingController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: '',
                  labelText: 'Name:',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.nameChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.name.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: Name.maxLength,
              ),
              ElevatedButton(
                onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.nextButtonPressed()),
                child: Text('Next'),
              )
            ],
          ),
        );
        break;
      case FormBlock.StatBlock:
        return Center(
          child: Column(
            children: <Widget>[
              Text('Enter your Character\'s Stats'),
              TextFormField(
                // controller: textEditingController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: '',
                  labelText: 'Name:',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.nameChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.name.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: Name.maxLength,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.backButtonPressed()),
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.nextButtonPressed()),
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        );
        break;
      case FormBlock.DetailBlock:
        return Center(
          child: Column(
            children: <Widget>[
              Text('Enter your Character\'s Details'),
              TextFormField(
                // controller: textEditingController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: '',
                  labelText: 'Name:',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.nameChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.name.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: Name.maxLength,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.backButtonPressed()),
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.nextButtonPressed()),
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        );
        break;
      case FormBlock.BioBlock:
        return Center(
          child: Column(
            children: <Widget>[
              Text('Enter your Character\'s Bio'),
              TextFormField(
                // controller: textEditingController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: '',
                  labelText: 'Name:',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.nameChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.name.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: Name.maxLength,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.backButtonPressed()),
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.nextButtonPressed()),
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        );
        break;
      case FormBlock.ImageBlock:
        return Center(
          child: Column(
            children: <Widget>[
              Text('Enter your Character\'s Image'),
              TextFormField(
                // controller: textEditingController,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  counterText: '',
                  labelText: 'Name:',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                onChanged: (value) => context.bloc<CharacterFormBloc>().add(
                      CharacterFormEvent.nameChanged(value),
                    ),
                validator: (_) => context.bloc<CharacterFormBloc>().state.character.name.value.fold(
                      (f) => f.maybeMap(
                        empty: (f) => 'cannot be empty',
                        exceedingLength: (f) => 'Exceeding length, max: ${f.max}',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                maxLength: Name.maxLength,
              ),
              Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.backButtonPressed()),
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () => context.bloc<CharacterFormBloc>().add(CharacterFormEvent.saved()),
                    child: Text('Finish'),
                  ),
                ],
              ),
            ],
          ),
        );
        break;
    }
    return Text('hello World');
  }
}
