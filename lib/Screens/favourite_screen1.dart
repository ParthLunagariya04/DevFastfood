import 'package:flutter/material.dart';

class FavouriteScreen1 extends StatefulWidget {
  static const String id = 'favourite_screen1';

  @override
  _FavouriteScreen1State createState() => _FavouriteScreen1State();
}

class _FavouriteScreen1State extends State<FavouriteScreen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            flexibleSpace: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favourite',
                    style: TextStyle(color: Colors.black, fontSize: 35.0),
                  ),
                ],
              ),
            ),
            leading: null,
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                  'Food',
                  style: TextStyle(color: Colors.red[600], fontSize: 20.0),
                )),
                Tab(
                    child: Text(
                  'Items',
                  style: TextStyle(color: Colors.red[600], fontSize: 20.0),
                )),
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xFFEFF5F5),
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Column(
                children: [
                  //container 2
                  Container(
                    height: 100.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/6.jpg',
                              height: 80.0,
                              width: 90,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, right: 30.0),
                                  child: Text(
                                    'Coffe five',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 30.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[800],
                                      ),
                                      Text('4.5'),
                                      SizedBox(width: 4.0),
                                      Text('(72 Reviews)')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: Colors.red[600],
                                size: 35.0,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                '₹ 150',
                                style: TextStyle(color: Colors.red[600]),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  ),

                  //container 2
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Container(
                      height: 100.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/6.jpg',
                                height: 80.0,
                                width: 90,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, right: 30.0),
                                    child: Text(
                                      'Coffe five',
                                      style: TextStyle(fontSize: 16.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 30.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                        ),
                                        Text('4.5'),
                                        SizedBox(width: 4.0),
                                        Text('(72 Reviews)')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.bookmark,
                                  color: Colors.red[600],
                                  size: 35.0,
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Text(
                                  '₹ 150',
                                  style: TextStyle(color: Colors.red[600]),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
