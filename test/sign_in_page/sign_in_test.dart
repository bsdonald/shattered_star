import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shattered_star/infrastructure/auth/firebase_auth_facade.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth{}
class MockUser extends Mock implements User{}
class MockUserCredential extends Mock implements UserCredential{}

void main() {
  MockFirebaseAuth _auth = MockFirebaseAuth();
  BehaviorSubject<MockUser> _user = BehaviorSubject<MockUser>();
  
  group('firebase auth test', () {
    test('sign in with email and password', () async {
       
    });

    test('register with email and password', () async {

    });
  }); 
}