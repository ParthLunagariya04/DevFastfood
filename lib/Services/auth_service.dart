import 'package:dev_fastfood/Services/database.dart';
import 'package:dev_fastfood/Services/dialog_service.dart';
import 'package:dev_fastfood/Services/locator.dart';
import 'package:dev_fastfood/models/user1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final DialogService _dialogService = locator<DialogService>();
BuildContext context;

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User1 _userFromFirebase(User user) {
    return user != null ? User1(uid: user.uid) : null;
  }
  // User1 _userFromFirebase=(User user) {
  //   return user != null ? User1(uid: user.uid) : null;
  // }

  //signIn with email and password
  Future signIn({
    @required String email,
    @required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user;

      await DatabaseService(uid: user.uid).updateUserData('fullname', 'email',
          'password', 'phoneNumber', 'yourLocation', 'dob');
      return _userFromFirebase(user);
    } catch (e) {
      print(e);
      return null;
    }
  }

  //signUp with email and password
  Future signUp({
    @required String email,
    @required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.message);
      _dialogService.showDialog(
          title: e.message, description: 'Please try again', buttonTital: 'OK');
      return null;
    }
  }

  Future<bool> isUserSignIn() async {
    var user = _firebaseAuth.currentUser;
    return user != null;
  }
}
