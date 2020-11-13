import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shattered_star/domain/auth/i_auth_facade.dart';
import 'package:shattered_star/domain/core/errors.dart';
import 'package:shattered_star/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
  CollectionReference get characterCollection => collection('PlayerCharacters');
}