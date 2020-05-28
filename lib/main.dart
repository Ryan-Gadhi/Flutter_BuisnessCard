import 'package:flutter/material.dart';

void main() {
  runApp(CVApp());
}

class CVApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cardHeight = 50.0;
    double cardWidth = 300;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Buissness Information'),
          backgroundColor: Colors.blueGrey[900],
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
              onPressed: null,
            )
          ],
        ),
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(10)),
              width: 350,
              height: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    // user image
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/images/2dAvatar.png'),
                    ),
                  ),
                  Text(
                    'Ryan Najeeb Gadhi',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey[50],
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Text(
                    'Flutter & iOS Developer',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[100],
                      fontFamily: 'Arial',
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 1,
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blueGrey,
                      ),
                      title: Text('+966 5342 25804'),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blueGrey,
                      ),
                      title: Text('RyanGadhi@yahoo.com'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
