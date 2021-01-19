import 'package:dev_fastfood/Screens/confirm_order.dart';
import 'package:flutter/material.dart';

class AddItemsScreen extends StatefulWidget {
  static const String id = 'add_items_screen';

  @override
  _AddItemsScreenState createState() => _AddItemsScreenState();
}

class _AddItemsScreenState extends State<AddItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(175.0),
          //AppBar
          child: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
                padding: EdgeInsets.only(left: 20.0, top: 42.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add new Item',
                      style: TextStyle(fontSize: 24.0, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 90.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                  color: Colors.black26,
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
                                      'Coffee One',
                                      style: TextStyle(fontSize: 25.0),
                                    ),
                                    SizedBox(height: 5.0),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.thumb_up_alt_outlined,
                                              size: 18.0),
                                          SizedBox(width: 5.0),
                                          Text(
                                            '56',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 17.0),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      '₹150',
                                      style: TextStyle(
                                          color: Colors.red[600],
                                          fontSize: 17.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              child: Row(
                                children: [
                                  Icon(Icons.remove_circle,
                                      size: 30.0, color: Colors.black38),
                                  SizedBox(width: 5.0),
                                  Text(
                                    '1',
                                    style: TextStyle(fontSize: 17.0),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(Icons.add_circle,
                                      size: 30.0, color: Colors.red[600]),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          )),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              //size and price
              Container(
                color: Color(0xFFEFF4F5),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size',
                        style: TextStyle(color: Color(0xFFA0A0A0)),
                      ),
                      Text(
                        'Price',
                        style: TextStyle(color: Color(0xFFA0A0A0)),
                      )
                    ],
                  ),
                ),
              ),

              //container main 1
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    focusColor: Colors.red[600],
                                    checkColor: Colors.red[600],
                                    value: true,
                                    onChanged: null),
                                Container(
                                    child: Row(
                                  children: [
                                    Text('Size S'),
                                    SizedBox(width: 10.0),
                                    Text(
                                      '(500 ml)',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            Text('₹150'),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    focusColor: Colors.red[600],
                                    checkColor: Colors.red[600],
                                    value: false,
                                    onChanged: null),
                                Container(
                                    child: Row(
                                  children: [
                                    Text('Size M'),
                                    SizedBox(width: 10.0),
                                    Text(
                                      '(700 ml)',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            Text('₹150'),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    focusColor: Colors.red[600],
                                    checkColor: Colors.red[600],
                                    value: true,
                                    onChanged: null),
                                Container(
                                    child: Row(
                                  children: [
                                    Text('Size L'),
                                    SizedBox(width: 10.0),
                                    Text(
                                      '(1000 ml)',
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            Text('₹150'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xFFEFF4F5),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 15.0, right: 15.0, bottom: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Note',
                        style: TextStyle(color: Color(0xFFA0A0A0)),
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 200.0, bottom: 20.0),
                child: Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ConfirmOrder.id);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 10.0),
                              child: Text(
                                '1 Item',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
                              ),
                            ),
                            SizedBox(
                              height: 13.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, bottom: 10.0),
                              child: Text(
                                '₹150',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 13.0),
                          child: Text(
                            'Add to Cart',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 10.0,
                      ),
                    ],
                    color: Colors.red[600],
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
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
