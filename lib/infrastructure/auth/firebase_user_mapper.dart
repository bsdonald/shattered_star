import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:shattered_star/domain/auth/user.dart';
import 'package:shattered_star/domain/auth/value_objects.dart';
import 'package:shattered_star/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      emailAddress: EmailAddress(email),
      // username: Username(displayName),
    );
  }
}
