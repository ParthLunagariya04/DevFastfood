import 'package:dev_fastfood/Screens/search_screen.dart';
import 'package:dev_fastfood/Screens/searching_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget container1() {
    return Container(
      height: 100.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(6.0))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF5F5),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(140.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.red[600],
            flexibleSpace: Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 40.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DELIVERING TO',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,
                            size: 15.0, color: Colors.white),
                        Text(
                          '76A empire high, Rajkot, Gujarat',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.keyboard_arrow_down, color: Colors.white)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),

                  //search pannel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[600],
                                blurRadius: 3.0,
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Center(
                          child: TextField(
                            onTap: (){
                              Navigator.pushNamed(context, SearchingScreen.id);
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black45,
                                ),
                                hintText: 'Searching...'),
                          ),
                        ),
                      ),
                      FlatButton(
                        minWidth: 50.0,
                        onPressed: () {
                          Navigator.pushNamed(context, SearchScreen.id);
                        },
                        child: Icon(
                          Icons.filter_list_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      //containers 2
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            height: 100.0,
            width: 300,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: container1(),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),

          //categories
          Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Categories', style: TextStyle(fontSize: 17.0)),
                  Text('View all >>', style: TextStyle(color: Colors.red[600])),
                ],
              ),
            ),
          ),

          //containers 2
          Container(
            height: 120.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey[600],
                                  blurRadius: 5.0,
                                  spreadRadius: 0.0)
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          index.toString(),
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          //hot sale
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot Sale', style: TextStyle(fontSize: 17.0)),
                  Text('View all >>', style: TextStyle(color: Colors.red[600])),
                ],
              ),
            ),
          ),
          //containers 3
          Container(
            height: 180.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bookmark_border),
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Food name...',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'etc name',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600],
                          blurRadius: 10.0,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 20.0, bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Products Ordered', style: TextStyle(fontSize: 17.0)),
                  Text('View all >>', style: TextStyle(color: Colors.red[600])),
                ],
              ),
            ),
          ),
          Container(
            height: 180.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bookmark_border),
                        Container(
                          height: 50,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Food name...',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'etc name',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[600],
                          blurRadius: 10.0,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
