import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WomenFirebaseUser {
  WomenFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

WomenFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WomenFirebaseUser> womenFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WomenFirebaseUser>(
      (user) {
        currentUser = WomenFirebaseUser(user);
        return currentUser!;
      },
    );
