import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  Future signInEmailAndPass(String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = userCredential.user;
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = userCredential.user;
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> signOut() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      return await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
