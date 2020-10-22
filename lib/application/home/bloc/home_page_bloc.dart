import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState.initial());

  @override
  Stream<HomePageState> mapEventToState(
    HomePageEvent event,
  ) async* {
    yield* event.map(
      cardPressed: (e) async* {
        yield const HomePageState.cardPressed();
      },
      cardReleased: (e) async* {
       yield const HomePageState.cardReleased();
      },
    );
  }
}
