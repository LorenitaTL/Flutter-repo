import 'package:firebase_auth/firebase_auth.dart';

class AuthFacebookService{
  final _auth = FirebaseAuth.instance;

  Stream<FirebaseUser> get currentUser => _auth.onAuthStateChanged;
  Future<AuthResult> signInWithCredentail(AuthCredential credential) => _auth.signInWithCredential(credential);
  Future<void> logout() => _auth.signOut();
}