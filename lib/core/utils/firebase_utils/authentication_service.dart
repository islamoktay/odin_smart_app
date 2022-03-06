import 'package:firebase_auth/firebase_auth.dart';

// ignore: constant_identifier_names
enum AuthEnums { SING_IN, SIGN_UP, SIGN_OUT, ERROR }

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<AuthEnums?> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return AuthEnums.SING_IN;
    } on FirebaseAuthException catch (_) {
      return AuthEnums.ERROR;
    }
  }

  Future<AuthEnums?> signUp({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return AuthEnums.SIGN_UP;
    } on FirebaseAuthException catch (_) {
      return AuthEnums.ERROR;
    }
  }

  Future<AuthEnums?> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return AuthEnums.SIGN_OUT;
    } catch (_) {
      return AuthEnums.ERROR;
    }
  }
}
