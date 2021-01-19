import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('user');

  Future updateUserData(
    String fullname,
    String email,
    String password,
    String phoneNumber,
    String yourLocation,
    String dob,
  ) async {
    return await userCollection.doc(uid).set({
      'fullname': fullname,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'yourLocation': yourLocation,
      'dob': dob
    });
  }
}
