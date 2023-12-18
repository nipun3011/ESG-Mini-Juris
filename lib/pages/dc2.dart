// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class LargeLabel extends StatelessWidget {
  final String text;

  const LargeLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[300], // Adjust grey shade
      width: double.infinity, // Stretch across remaining width
      padding: EdgeInsets.all(13.0), // Add padding around text
      child: Text(
        text,
        textAlign: TextAlign.center, // Center text
        style: TextStyle(
          fontSize: 32.0, // Adjust font size
          fontWeight: FontWeight.bold, // Make text bold if desired
        ),
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 245, 161),
        elevation: 4.0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'EcoSync',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {}, // Replace with signup function
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 50, 177, 99),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Remove border radius
                ),
              ),
              child: Text(
                'Log Out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Container(
            width: 200.0,
            margin: EdgeInsets.all(15),
            child: Drawer(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // Reuse Drawer content within Row
              child: Container(
                color: Color.fromARGB(
                    255, 220, 255, 220), // Change sidebar color if needed
                child: Column(
                  children: [
                    // ... your existing sidebar content
                    ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text('Dashboard'),
                      onTap: () {}, // Update with your navigation logic
                    ),
                    ListTile(
                      leading: Icon(Icons.task),
                      title: Text('Tasks'),
                      onTap: () {}, // Update with your navigation logic
                    ),
                    ListTile(
                      leading: Icon(Icons.poll),
                      title: Text('Surveys'),
                      onTap: () {}, // Update with your navigation logic
                    ),
                    ListTile(
                      leading: Icon(Icons.money_rounded),
                      title: Text('Resources'),
                      onTap: () {}, // Update with your navigation logic
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 15, 15),
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 220, 255, 220),
                      borderRadius: BorderRadius.circular(10)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        LargeLabel(text: 'RGIPT, Jais'), //Add the label
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [],
                        ),
                      ]
                    )
      
              )
              ),
          )
        ],
      ),
    );
  }
}
