import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HookDatFishingFirebaseUser {
  HookDatFishingFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HookDatFishingFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HookDatFishingFirebaseUser> hookDatFishingFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HookDatFishingFirebaseUser>(
            (user) => currentUser = HookDatFishingFirebaseUser(user));
