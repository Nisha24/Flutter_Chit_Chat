import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Account Create
  Future AccountCreated(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Account Created";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return "The password is too weak";
      } else if (e.code == 'email-already-in-use') {
        return "Email is already exists";
      }
    } catch (e) {
      return "Error occured";
    }
  }

  // sign In

  Future signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "Welcome";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "No user found for that email";
      } else if (e.code == 'wrong password') {
        return "Wrong password provided for that user";
      }
    }
  }

  // Sign Out

  void signOut() {
    _auth.signOut();
  }
}
