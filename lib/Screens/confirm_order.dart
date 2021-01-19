import 'package:flutter/material.dart';

class ConfirmOrder extends StatefulWidget {
  static const String id = 'confirm_order';

  @override
  _ConfirmOrderState createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,

      // container 1 -> confirm order
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Confirm Order',
                              style: TextStyle(fontSize: 25.0)),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('Delivery to', style: TextStyle(fontSize: 16.0)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text(
                                'ID:',
                                style: TextStyle(color: Colors.red[600]),
                              ),
                              SizedBox(width: 3.0),
                              Text('nj65656ds4',
                                  style: TextStyle(fontSize: 13.0)),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('Add new address',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.red[600])),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //container 2 map
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Container(
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
              ),

              Container(
                color: Color(0xFFEFF4F5),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 20.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Delivery Time',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Text(
                        '10:50 AM',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Text(
                        'Oct 6, 2020',
                        style: TextStyle(color: Colors.black87),
                      )
                    ],
                  ),
                ),
              ),

              //container coffe one
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0))),
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            'Coffe one',
                            style: TextStyle(fontSize: 15.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                Text('Subtotal'),
                                SizedBox(width: 10.0),
                                Text(
                                  '(1 item)',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ],
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 205.0),
                              child: Text('₹150'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                Text('Ship fee'),
                                SizedBox(width: 10.0),
                                Text(
                                  '(2.4 km)',
                                  style: TextStyle(color: Colors.black87),
                                ),
                              ],
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 202.0),
                              child: Text('₹150'),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  'Total',
                                  style: TextStyle(
                                      color: Colors.red[600], fontSize: 18.0),
                                ),
                                SizedBox(width: 10.0),
                              ],
                            )),
                            Padding(
                              padding: const EdgeInsets.only(left: 202.0),
                              child: Text('₹150',
                                  style: TextStyle(
                                      color: Colors.red[600], fontSize: 18.0)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          'Add Voucher',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),

                      //containers 3 vouchers
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              height: 60.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                            ),
                            SizedBox(width: 10.0),
                            Container(
                              height: 60.0,
                              width: 100.0,
                              child: Center(child: Text('Add more')),
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0))),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              //container Note
              Container(
                color: Color(0xFFEFF4F5),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 15.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Note',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
                child: Container(
                  height: 80.0,
                  decoration: BoxDecoration(
                      color: Color(0xFFEFF4F5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          topRight: Radius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Type your note here!',
                          style: TextStyle(color: Color(0xFFA0A0A0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //container payment mathod
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 15.0, bottom: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Method',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Add payment method',
                          style: TextStyle(color: Colors.red[600]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  height: 90.0,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 90.0,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))),
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 5.0, top: 20.0, bottom: 20.0),
                child: SizedBox(
                  width: 360.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.red[600],
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
