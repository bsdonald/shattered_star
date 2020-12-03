import 'package:firebase_storage/firebase_storage.dart';
import 'package:shattered_star/domain/auth/i_auth_facade.dart';
import 'package:shattered_star/domain/core/errors.dart';
import 'package:shattered_star/injection.dart';

extension StorageX on FirebaseStorage {
  Future<Reference> userDirectory() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseStorage.instance.ref('users/${user.id.getOrCrash()}');
  }


//   extension StorageReference on Reference {
//     Reference get characterCollection => ref('Characters');
//   }
}