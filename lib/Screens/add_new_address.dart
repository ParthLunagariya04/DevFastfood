import 'package:flutter/material.dart';

class AddNewAddress extends StatefulWidget {
  static const String id = 'add_new_address';

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEFF4F5),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xFFEFF4F5),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Add new Address',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                SizedBox(height: 30.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Address name
                    Container(
                      height: 50.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: TextFormField(
                            maxLines: 1,
                            onChanged: null,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.black38),
                                hintText: 'Address name',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    
                    //container Home
                    Container(
                      height: 50.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: TextFormField(
                            maxLines: 1,
                            onChanged: null,
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.keyboard_arrow_down,
                                    color: Colors.black38),
                                hintStyle: TextStyle(color: Colors.black38),
                                hintText: 'Home',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Your location
                    Container(
                      height: 50.0,
                      width: 290.0,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: TextFormField(
                            maxLines: 1,
                            onChanged: null,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.black38),
                                hintText: 'Your location',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      height: 50.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white),
                      child: Center(
                        child: Icon(Icons.location_on),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.0),

                //Name of the Consignee
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: TextFormField(
                        maxLines: 1,
                        onChanged: null,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black38),
                            hintText: 'Name of the Consignee',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),

                //Phone number
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: TextFormField(
                        maxLines: 1,
                        onChanged: null,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black38),
                            hintText: 'Phone number',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),

                //Delivery note
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: TextFormField(
                        maxLines: 1,
                        onChanged: null,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.black38),
                            hintText: 'Delivery note',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),

                //Complete button
                SizedBox(
                  width: 400.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.red[600],
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Complete',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
