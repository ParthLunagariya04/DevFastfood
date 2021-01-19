import 'package:dev_fastfood/Screens/add_new_address.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  static const String id = 'address_screen';

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEFF4F5),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Color(0xFFEFF4F5),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Address
                Container(
                  child: Text(
                    'Address',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                SizedBox(height: 30.0),

                //container 1 Home
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey[300], blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.location_on,
                                          color: Colors.black38, size: 20.0),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Address, Streat No',
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.person,
                                          color: Colors.black38, size: 20.0),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Customer Name',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(height: 13.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.call,
                                          color: Colors.black38, size: 20.0),
                                      SizedBox(width: 10.0),
                                      Text(
                                        '+91 12345 67890',
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black38,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),

                //container 2 My Work
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey[300], blurRadius: 5.0)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Work',
                              style: TextStyle(fontSize: 20.0),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.location_on,
                                          color: Colors.black38, size: 20.0),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Address, Streat No',
                                        style: TextStyle(fontSize: 18.0),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.person,
                                          color: Colors.black38, size: 20.0),
                                      SizedBox(width: 10.0),
                                      Text(
                                        'Customer Name',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(height: 13.0),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Icon(Icons.call,
                                          color: Colors.black38, size: 20.0),
                                      SizedBox(width: 10.0),
                                      Text(
                                        '+91 12345 67890',
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 16.0),
                                      ),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black38,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                //container 3
                Container(
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Center(
                    child: FlatButton(
                      height: 50.0,
                      
                      onPressed: () {
                        Navigator.pushNamed(context, AddNewAddress.id);
                      },
                      child: Text(
                        'Add new Address',
                        style: TextStyle(fontSize: 18.0, color: Colors.black38),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
