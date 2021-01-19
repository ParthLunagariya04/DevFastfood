
import 'package:dev_fastfood/Screens/main_screen.dart';
import 'package:dev_fastfood/Screens/sign_in_screen.dart';
import 'package:dev_fastfood/Services/auth_service.dart';
import 'package:dev_fastfood/models/user1.dart';
import 'package:flutter/material.dart';

// final FirebaseAuth mAuth = FirebaseAuth.instance;

class SignUpScreen extends StatefulWidget {
  static const String id = 'sign_up_screen';

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController yourLocationController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final AuthenticationService _service = AuthenticationService();

  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // DatabaseReference dbRef =
  //     FirebaseDatabase.instance.reference().child("Users");


  User1 _user = User1();

  Widget textfield({
    @required hintText,
    @required controller,
    @required onSaved,
    @required validator,
  }) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: TextFormField(
            validator: validator,
            onSaved: onSaved,
            maxLines: 1,
            onChanged: null,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Color(0xFFEFF4F5),

        //appbar
        appBar: AppBar(
          backgroundColor: Color(0xFFEFF5F5),
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.id);
              },
              color: Colors.black),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Creat New Account',
                    style: TextStyle(fontSize: 33.0),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  textfield(
                    validator: (val) => val.isEmpty ? 'Enter Full name' : null,
                    onSaved: (String value) {
                      _user.displayName = value;
                    },
                    hintText: 'Full name',
                    controller: fullNameController,
                  ),
                  SizedBox(height: 20.0),
                  textfield(
                    validator: (val) =>
                        val.toString().isEmpty ? 'enter email' : null,
                    onSaved: (String value) {
                      _user.email = value;
                    },
                    hintText: 'Email',
                    controller: emailController,
                  ),
                  SizedBox(height: 20.0),
                  textfield(
                    validator: (val) => val.toString().length < 6
                        ? 'enter password 6+ chars long'
                        : null,
                    onSaved: (String value) {
                      _user.password = value;
                    },
                    hintText: 'Password',
                    controller: passwordController,
                  ),
                  SizedBox(height: 20.0),
                  textfield(
                    validator: (val) =>
                        val.toString().isEmpty ? 'enter phone number' : null,
                    onSaved: (String value) {
                      _user.phoneNumber = value;
                    },
                    hintText: 'Phone number',
                    controller: phoneNoController,
                  ),
                  SizedBox(height: 20.0),
                  textfield(
                      validator: (val) =>
                          val.toString().isEmpty ? 'chose your location' : null,
                      onSaved: (String value) {
                        _user.yourLocation = value;
                      },
                      hintText: 'Your location',
                      controller: yourLocationController),
                  SizedBox(height: 20.0),
                  textfield(
                    validator: (val) =>
                        val.toString().isEmpty ? 'enter your DOB' : null,
                    onSaved: (String value) {
                      _user.dob = value;
                    },
                    hintText: 'Date of birth',
                    controller: dobController,
                  ),
                  SizedBox(height: 60.0),
                  SizedBox(
                    width: 400.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          dynamic obj = await _service.signUp(
                              email: emailController.text,
                              password: passwordController.text);
                          if (obj == null) {
                            return null;
                          } else {
                            
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainScreen()),
                            );
                          }
                        }
                      },
                      color: Colors.red[600],
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void register() {
  //   mAuth
  //       .createUserWithEmailAndPassword(
  //           email: emailController.text, password: passwordController.text)
  //       .then((result) {
  //     dbRef.child(result.user.uid).set({
  //       "fullName": fullNameController.text,
  //       "email": emailController.text,
  //       "password": passwordController.text,
  //       "phoneNo": phoneNoController.text,
  //       "your Location": yourLocationController.text,
  //       "date of birth": dobController.text,
  //     }).then((res) {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => MainScreen()),
  //       );
  //     });
  //   }).catchError((err) {
  //     showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: Text("Error"),
  //             content: Text(err.message),
  //             actions: [
  //               FlatButton(
  //                 child: Text("Ok"),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               )
  //             ],
  //           );
  //         });
  //   });
  // }
}
