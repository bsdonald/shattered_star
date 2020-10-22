part of 'home_page_bloc.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = HomePageInitial;
  const factory HomePageState.cardPressed() = HomePageCardPressed;
  const factory HomePageState.cardReleased() = HomePageCardReleased;
}
