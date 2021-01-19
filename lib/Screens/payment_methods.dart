import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  static const String id = 'payment_methods';

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF4F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFEFF4F5),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Edit',
              style: TextStyle(color: Colors.red[600]),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Payment Methods',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),

                //container 1
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 90.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[350],
                          blurRadius: 10.0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                width: 75.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        '**** ***325',
                                        style: TextStyle(fontSize: 17.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'Jan 10, 2020',
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Checkbox(
                            focusColor: Colors.red[600],
                            checkColor: Colors.red[600],
                            value: false,
                            onChanged: null),
                      ],
                    ),
                  ),
                ),
                //container 2
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 90.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[350],
                          blurRadius: 10.0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Container(
                                width: 75.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[400],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        '**** ***325',
                                        style: TextStyle(fontSize: 17.0),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        'Jan 10, 2020',
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Checkbox(
                            focusColor: Colors.red[600],
                            checkColor: Colors.red[600],
                            value: false,
                            onChanged: null),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    child: Text(
                      'Add Payment Methods',
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),

                //container VISA card
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.grey[400], blurRadius: 1.0)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Container(
                                height: 40.0,
                                width: 40.0,
                                color: Colors.grey[400],
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                'Visa Card',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.black45,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0),

                //container card number
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
                            hintText: 'Card Number', border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),

                // container valid thru
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50.0,
                      width: 180.0,
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
                                suffixIcon: Icon(Icons.keyboard_arrow_down),
                                hintText: 'Valid thru',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),

                    //container CVV
                    Container(
                      height: 50.0,
                      width: 180.0,
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
                                hintText: 'CVV', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: SizedBox(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
