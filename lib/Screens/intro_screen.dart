
import 'package:dev_fastfood/Screens/sign_in_screen.dart';
import 'package:dev_fastfood/Screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  static const String id = 'intro_screen';

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/6.jpg',scale: 5.0),
        title: "",
        body: "Search for faveriout food",
        decoration: const PageDecoration(
          bodyTextStyle: TextStyle(fontSize: 40.0),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/6.jpg',scale: 5.0),
        title: " ",
        body: "Fast delivery to your place",
        decoration: const PageDecoration(
          bodyTextStyle: TextStyle(fontSize: 40.0),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/6.jpg',scale: 5.0),
        title: "",
        body: "Tracking shipper on the map",
        footer: Column(
          children: [
            Text(
              'Discover the foods from over',
              style: TextStyle(fontSize: 15.0, color: Colors.black38),
            ),
            Text(
              '3250 restaurants.',
              style: TextStyle(fontSize: 15.0, color: Colors.black38),
            ),
          ],
        ),
        decoration: const PageDecoration(
          bodyTextStyle: TextStyle(fontSize: 40.0),
        ),
      ),
    ];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 600.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0)),
                ),

                //Intro screens
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,bottom: 40.0),
                  child: IntroductionScreen(
                    dotsDecorator: DotsDecorator(activeColor: Colors.red[600]),
                    globalBackgroundColor: Colors.white,
                    pages: getPages(),
                    done: Text(''),
                    onDone: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40.0,
                      width: 130.0,
                      child: OutlineButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.id);
                          // _timer?.cancel();
                          //   EasyLoading.show(maskType: EasyLoadingMaskType.custom,
                          //       dismissOnTap: true, status: 'Loading...');
                        },
                        shape: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.white60),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 50.0),
                    Container(
                      height: 40.0,
                      width: 130.0,
                      child: OutlineButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignInScreen.id);
                        },
                        shape: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        borderSide: BorderSide(
                            style: BorderStyle.solid, color: Colors.white60),
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
