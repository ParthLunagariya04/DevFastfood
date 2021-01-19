import 'package:dev_fastfood/Screens/main_screen.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String id = 'search_screen';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFF4F5),

      //App bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(95.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red[600],
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, top: 60.0, right: 15.0, bottom: 15.0),
            child: Row(
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black38),
                          hintText: 'Searching...'),
                    ),
                  ),
                ),
                FlatButton(
                  minWidth: 10.0,
                  onPressed: () {
                    Navigator.pushNamed(context, MainScreen.id);
                  },
                  color: Colors.red[600],
                  child: Text(
                    'Exit',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                // Approximately results.
                Container(
                  color: Color(0xFFEFF4F5),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Text(
                          'Approximately',
                          style: TextStyle(color: Color(0xFFA0A0A0)),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '06',
                          style: TextStyle(color: Colors.red[600]),
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          'results.',
                          style: TextStyle(color: Color(0xFFA0A0A0)),
                        )
                      ],
                    ),
                  ),
                ),

                // container 1
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 100.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/6.jpg',
                              height: 80.0,
                              width: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 15.0, bottom: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sandwitch',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                        ),
                                        Text('4.6'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.black38,
                            size: 30.0,
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

                //container 2
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 100.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/6.jpg',
                              height: 80.0,
                              width: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 15.0, bottom: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sandwitch two',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                        ),
                                        Text('4.6'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.black38,
                            size: 30.0,
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

                // Container 3
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 100.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/6.jpg',
                              height: 80.0,
                              width: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 15.0, bottom: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sandwitch with chizzi',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                        ),
                                        Text('4.6'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.black38,
                            size: 30.0,
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

                //container 4
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 100.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/6.jpg',
                              height: 80.0,
                              width: 90,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 15.0, bottom: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Garlic Sandwitch',
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                        ),
                                        Text('4.6'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.black38,
                            size: 30.0,
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
          )
        ],
      ),
    );
  }
}
