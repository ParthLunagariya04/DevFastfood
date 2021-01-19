import 'package:dev_fastfood/Screens/address_screen.dart';
import 'package:dev_fastfood/Screens/payment_methods.dart';
import 'package:dev_fastfood/Screens/personal_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF5F5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180.0),
        //AppBar
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
              padding: EdgeInsets.only( top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Profile',
                      style: TextStyle(fontSize: 35.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PersonalScreen.id);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 90.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[350],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Coustomer Name',
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                    Text(
                                      '+91 98988 95223',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 17.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,
                              size: 20.0, color: Colors.black45)
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          actions: [
            Container(
              height: 20.0,
              decoration: BoxDecoration(color: Colors.amber),
            )
          ],
        ),
      ),
      //containers 1
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white),
              child: Column(
                children: [
                  //payment mathod
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PaymentMethods.id);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.payment, color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Payment Methods',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),

                  //Address
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AddressScreen.id);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Address',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 17.0),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),

                  //My Vouchers
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.verified_rounded, color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'My Vouchers',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 17.0),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //container 2
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white),
              child: Column(
                children: [
                  //notification
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.notifications_none_outlined,
                                color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Notification',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),

                  //language
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.language, color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Language',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 17.0),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),

                  //settings
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.settings, color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 17.0),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),

                  //invite friends
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.group_add_outlined,
                                color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Invite Friends',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),

                  //support
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.business_center_outlined,
                                color: Colors.black45),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              'Support',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,
                            size: 20.0, color: Colors.black45),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //container 3
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[350],
                      blurRadius: 10.0,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.white),
              child: Column(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.logout, color: Colors.black45),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'Log Out',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
