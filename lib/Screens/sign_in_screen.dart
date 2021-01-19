import 'dart:async';
import 'package:dev_fastfood/Screens/main_screen.dart';
import 'package:dev_fastfood/Screens/sign_up_screen.dart';
import 'package:dev_fastfood/Services/auth_service.dart';
import 'package:dev_fastfood/Services/dialog_service.dart';
import 'package:dev_fastfood/Services/locator.dart';
import 'package:dev_fastfood/models/user1.dart';
import 'package:flutter/material.dart';

// final FirebaseAuth mAuth = FirebaseAuth.instance;

class SignInScreen extends StatefulWidget {
  static const String id = 'sign_in_screen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Widget textfield(
      {@required hintText,
      @required obscureText,
      @required controller,
      @required onSaved}) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: TextFormField(
            onSaved: onSaved,
            controller: controller,
            obscureText: obscureText,
            maxLines: 1,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  User1 _user = User1();

  final AuthenticationService _authenticationService = AuthenticationService();
  final DialogService _dialogService = locator<DialogService>();

  //completer
  Completer _myCompleter = Completer();
  Future doThings() {
    return _myCompleter.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF4F5),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80.0, right: 1.0),
                    child: Image.asset(
                      'assets/6.jpg',
                      height: 230.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  //username text from field
                  textfield(
                      hintText: 'Username',
                      obscureText: false,
                      controller: emailController,
                      onSaved: (String value) {
                        _user.email = value;
                      }),
                  SizedBox(height: 20.0),

                  //password text from field
                  textfield(
                      hintText: 'Password',
                      obscureText: true,
                      controller: passwordController,
                      onSaved: (String value) {
                        _user.password = value;
                      }),
                  SizedBox(height: 20.0),

                  //forgot password
                  Text(
                    'Forgot Password!',
                    style: TextStyle(fontSize: 18.0, color: Colors.black54),
                  ),
                  SizedBox(height: 40.0),

                  //sign in button
                  SizedBox(
                    width: 400.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () async {
                        // dynamic result = _authenticationService.signIn(
                        //     email: emailController.text,
                        //     password: passwordController.text);
                        // if (result == null) {
                        //   print('enter velid email');
                        // }else {

                        // }

                        if (_formKey.currentState.validate()) {
                          dynamic obj = await _authenticationService.signIn(
                              email: emailController.text,
                              password: passwordController.text);
                          if (obj == null) {
                            print('enter valid email');
                            _dialogService.showDialog(
                                title: 'Please try again',
                                description: 'Enter valid email or Password',
                                buttonTital: 'OK');
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
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.0),

                  //sign in with facebook button
                  SizedBox(
                    width: 400.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        'Sign In with Facebook',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 90.0),

                  //sign up
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "You don't have an account?",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpScreen.id);
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.red, fontSize: 18.0),
                          ),
                        ),
                      ],
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

  //sign in with email
  // void signInWithEmailPassword() async {
  //   User user;
  //   try {
  //     user = (await mAuth.signInWithEmailAndPassword(
  //       email: emailController.text,
  //       password: passwordController.text,
  //     )).user;
  //   } catch (e) {
  //     print(e.toString());
  //   } finally {
  //     if (user != null) {
  //       print("User is Sign IN");
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => MainScreen()),
  //       );
  //     }
  //   }
  // }
}
