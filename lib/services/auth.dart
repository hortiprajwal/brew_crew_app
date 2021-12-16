// ignore: import_of_legacy_library_into_null_safe
import 'package:brew_crew/models/myuser.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create MyUser obj based on FirebaseUser
  MyUser? _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // sign in anon
  Future signInAnon() async {
    try {
        AuthResult result = await _auth.signInAnonymously();
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
    }
    catch(e) {
        print(e.toString());
        return null;
    }
}

  //sign in wit email & password

  //register with email & password

  //sign out

}