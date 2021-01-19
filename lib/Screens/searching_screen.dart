import 'package:dev_fastfood/Screens/main_screen.dart';
import 'package:dev_fastfood/Screens/search_screen.dart';
import 'package:flutter/material.dart';

class SearchingScreen extends StatefulWidget {
  static const String id = 'searching_screen';

  @override
  _SearchingScreenState createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // app bar
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

                // search panel
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
                      onTap: (){
                        Navigator.pushNamed(context, SearchScreen.id);
                      },
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
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
            child: Column(
              children: [
                //history
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'History',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        'Clear All',
                        style:
                            TextStyle(color: Color(0xFFA0A0A0), fontSize: 15.0),
                      )
                    ],
                  ),
                ),

                //milk tea
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[350],
                              blurRadius: 0.1,
                              offset: Offset.fromDirection(1))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Milk Tea',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black26),
                            ),
                          ),
                          Icon(
                            Icons.close,
                            size: 20.0,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //Sandwich
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[350],
                              blurRadius: 0.1,
                              offset: Offset.fromDirection(1))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Sandwich',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black26),
                            ),
                          ),
                          Icon(
                            Icons.close,
                            size: 20.0,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //coffee
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[350],
                              blurRadius: 0.1,
                              offset: Offset.fromDirection(1))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Coffee',
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black26),
                            ),
                          ),
                          Icon(
                            Icons.close,
                            size: 20.0,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                //view
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text('View',
                            style: TextStyle(
                                fontSize: 17.0, color: Colors.red[600])),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.red[600],
                        )
                      ],
                    ),
                  ),
                ),

                //Suggestions
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Suggestions', style: TextStyle(fontSize: 17.0)),
                        Text('View all >>',
                            style: TextStyle(color: Colors.red[600])),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              //containers list
              Container(
                height: 170.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 150.0,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    // sub container 1
                                    Container(
                                      height: 60.0,
                                      width: 60.0,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0))),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        index.toString(),
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Row(
                                    children: [
                                      //sub container 2
                                      Container(
                                        height: 60.0,
                                        width: 60.0,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0))),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          index.toString(),
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
