// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:shattered_star/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shattered_star/application/home/bloc/home_page_bloc.dart';
import 'package:shattered_star/infrastructure/auth/firebase_auth_facade.dart';
import 'package:shattered_star/domain/auth/i_auth_facade.dart';
import 'package:shattered_star/infrastructure/character/character_bucket.dart';
import 'package:shattered_star/domain/character/i_character_bucket.dart';
import 'package:shattered_star/infrastructure/character/character_repository.dart';
import 'package:shattered_star/domain/character/i_character_repository.dart';
import 'package:shattered_star/infrastructure/notes/note_repository.dart';
import 'package:shattered_star/domain/notes/i_note_repository.dart';
import 'package:shattered_star/application/notes/note_actor/note_actor_bloc.dart';
import 'package:shattered_star/application/notes/note_form/note_form_bloc.dart';
import 'package:shattered_star/application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:shattered_star/presentation/core/ss_colors.dart';
import 'package:shattered_star/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:shattered_star/application/auth/auth_bloc.dart';
import 'package:shattered_star/application/characters/character_actor/character_actor_bloc.dart';
import 'package:shattered_star/application/characters/character_form/character_form_bloc.dart';
import 'package:shattered_star/application/characters/character_watcher/character_watcher_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  g.registerLazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.storage);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<HomePageBloc>(() => HomePageBloc());
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<ICharacterBucket>(
      () => CharacterBucket(g<FirebaseStorage>()));
  g.registerLazySingleton<ICharacterRepository>(
      () => CharacterRepository(g<FirebaseFirestore>()));
  g.registerLazySingleton<INoteRepository>(
      () => NoteRepository(g<FirebaseFirestore>()));
  g.registerFactory<NoteActorBloc>(() => NoteActorBloc(g<INoteRepository>()));
  g.registerFactory<NoteFormBloc>(() => NoteFormBloc(g<INoteRepository>()));
  g.registerFactory<NoteWatcherBloc>(
      () => NoteWatcherBloc(g<INoteRepository>()));
  g.registerFactory<SSColors>(() => SSColors());
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<CharacterActorBloc>(
      () => CharacterActorBloc(g<ICharacterRepository>()));
  g.registerFactory<CharacterFormBloc>(
      () => CharacterFormBloc(g<ICharacterRepository>()));
  g.registerFactory<CharacterWatcherBloc>(
      () => CharacterWatcherBloc(g<ICharacterRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
