import 'package:flutter/material.dart';

class PersonalScreen extends StatefulWidget {
  static const String id = 'personal_screen';

  @override
  _PersonalScreenState createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
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
              'Save',
              style: TextStyle(color: Colors.red[600]),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.add_circle, color: Colors.green),
                    ),
                  ],
                ),
              ),

              //container 1 full name
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 3.0,
                            offset: Offset.fromDirection(1))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Container(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: TextFormField(
                          maxLines: 1,
                          onChanged: null,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                                size: 18.0,
                              ),
                              border: InputBorder.none,
                              hintText: 'Full Name'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //container 2 password
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 3.0,
                            offset: Offset.fromDirection(1))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Container(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: TextFormField(
                          obscureText: true,
                          maxLines: 1,
                          onChanged: null,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                                size: 18.0,
                              ),
                              border: InputBorder.none,
                              hintText: 'Password'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //container 3 phone number
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 3.0,
                            offset: Offset.fromDirection(1))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Container(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: TextFormField(
                          maxLines: 1,
                          onChanged: null,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                                size: 18.0,
                              ),
                              border: InputBorder.none,
                              hintText: 'Phone Number'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //container 4 email
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
                child: Container(
                  height: 60.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 3.0,
                            offset: Offset.fromDirection(1))
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white),
                  child: Container(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: TextFormField(
                          maxLines: 1,
                          onChanged: null,
                          decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black38,
                                size: 18.0,
                              ),
                              border: InputBorder.none,
                              hintText: 'Email'),
                        ),
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
