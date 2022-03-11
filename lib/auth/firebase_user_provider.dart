import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HookDatFirebaseUser {
  HookDatFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HookDatFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HookDatFirebaseUser> hookDatFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<HookDatFirebaseUser>(
        (user) => currentUser = HookDatFirebaseUser(user));
