// import 'package:dev_fastfood/Notifier/auth_notifier.dart';
// import 'package:dev_fastfood/models/user1.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// // sign in
// signIn(User1 user1, AuthNotifier authNotifier) async {
//   UserCredential credential = await FirebaseAuth.instance
//       .signInWithEmailAndPassword(email: user1.email, password: user1.password)
//       .catchError((error) => print(error.code));

//   if (credential != null) {
//     User firebaseUser = credential.user;

//     if (firebaseUser != null) {
//       print("Sign in: $firebaseUser");
//       authNotifier.setUser(firebaseUser);
//     }
//   }
// }

// // sign up
// signUp(User1 user1, AuthNotifier authNotifier) async {
//   UserCredential credential = await FirebaseAuth.instance
//       .createUserWithEmailAndPassword(
//           email: user1.email, password: user1.password)
//       .catchError((error) => print(error.code));

//   if (credential != null) {
//     await FirebaseAuth.instance.currentUser
//         .updateProfile(displayName: user1.displayName);

//     User firebaseUser = credential.user;

//     if (firebaseUser != null) {
//       await firebaseUser.updateProfile();
//       await firebaseUser.reload();

//       print("sign up: $firebaseUser");

//       User currentUser = FirebaseAuth.instance.currentUser;
//       authNotifier.setUser(currentUser);
//     }
//   }
// }

// // sign out
// signOut(AuthNotifier authNotifier) async {
//   await FirebaseAuth.instance
//       .signOut()
//       .catchError((error) => print(error.code));
//   authNotifier.setUser(null);
// }

// initializeCurrentUser(AuthNotifier authNotifier) {
//   User firebaseUser = FirebaseAuth.instance.currentUser;

//   if (firebaseUser != null) {
//     print(firebaseUser);
//     authNotifier.setUser(firebaseUser);
//   }
// }
