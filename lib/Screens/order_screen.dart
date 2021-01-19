import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  static const String id = 'order_screen';

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(left: 10.0, top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order',
                  style: TextStyle(color: Colors.black, fontSize: 30.0),
                ),
              ],
            ),
          ),
          leading: null,
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                  child: Text(
                'Ongoing',
                style: TextStyle(color: Colors.red[600], fontSize: 20.0),
              )),
              Tab(
                  child: Text(
                'History',
                style: TextStyle(color: Colors.red[600], fontSize: 20.0),
              )),
              Tab(
                  child: Text(
                'Draft',
                style: TextStyle(color: Colors.red[600], fontSize: 20.0),
              )),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //container 1
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/6.jpg',
                            height: 80.0,
                            width: 90,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, right: 30.0),
                                  child: Text(
                                    'Coffee one',
                                    style: TextStyle(fontSize: 18.0),
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Row(
                                  children: [
                                    Text('ID:'),
                                    SizedBox(width: 5.0),
                                    Text('f57s558s5'),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    '1 items',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Shipping',
                          style: TextStyle(color: Colors.red[600]),
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

              //go discover button
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Center(
                  child: SizedBox(
                    width: 200.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.red[600],
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        'Go Discover',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
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
