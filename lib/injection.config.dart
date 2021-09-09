// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i21;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i20;
import 'application/characters/character_actor/character_actor_bloc.dart'
    as _i22;
import 'application/characters/character_form/character_form_bloc.dart' as _i23;
import 'application/characters/character_watcher/character_watcher_bloc.dart'
    as _i24;
import 'application/home/bloc/home_page_bloc.dart' as _i7;
import 'application/notes/note_actor/note_actor_bloc.dart' as _i16;
import 'application/notes/note_form/note_form_bloc.dart' as _i17;
import 'application/notes/note_watcher/note_watcher_bloc.dart' as _i18;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/character/i_character_bucket.dart' as _i10;
import 'domain/character/i_character_repository.dart' as _i12;
import 'domain/notes/i_note_repository.dart' as _i14;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/character/character_bucket.dart' as _i11;
import 'infrastructure/character/character_repository.dart' as _i13;
import 'infrastructure/core/firebase_injectable_module.dart' as _i25;
import 'infrastructure/notes/note_repository.dart' as _i15;
import 'presentation/core/ss_colors.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i7.HomePageBloc>(() => _i7.HomePageBloc());
  gh.lazySingleton<_i8.IAuthFacade>(() =>
      _i9.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i10.ICharacterBucket>(
      () => _i11.CharacterBucket(get<_i5.FirebaseStorage>()));
  gh.lazySingleton<_i12.ICharacterRepository>(
      () => _i13.CharacterRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i14.INoteRepository>(
      () => _i15.NoteRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i16.NoteActorBloc>(
      () => _i16.NoteActorBloc(get<_i14.INoteRepository>()));
  gh.factory<_i17.NoteFormBloc>(
      () => _i17.NoteFormBloc(get<_i14.INoteRepository>()));
  gh.factory<_i18.NoteWatcherBloc>(
      () => _i18.NoteWatcherBloc(get<_i14.INoteRepository>()));
  gh.factory<_i19.SSColors>(() => _i19.SSColors());
  gh.factory<_i20.SignInFormBloc>(
      () => _i20.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i22.CharacterActorBloc>(() => _i22.CharacterActorBloc(
      get<_i12.ICharacterRepository>(), get<_i10.ICharacterBucket>()));
  gh.factory<_i23.CharacterFormBloc>(() => _i23.CharacterFormBloc(
      get<_i12.ICharacterRepository>(), get<_i10.ICharacterBucket>()));
  gh.factory<_i24.CharacterWatcherBloc>(
      () => _i24.CharacterWatcherBloc(get<_i12.ICharacterRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
