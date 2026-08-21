import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  FirebaseService._();

  static Future<bool> initialize() async {
    try {
      await Firebase.initializeApp();
      return true;
    } catch (_) {
      return false;
    }
  }
}
