import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PalmkeeperClientFirebaseUser {
  PalmkeeperClientFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PalmkeeperClientFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PalmkeeperClientFirebaseUser> palmkeeperClientFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PalmkeeperClientFirebaseUser>(
            (user) => currentUser = PalmkeeperClientFirebaseUser(user));
