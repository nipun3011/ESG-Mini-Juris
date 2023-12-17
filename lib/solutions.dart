// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

class SolutionCard extends StatefulWidget {
  const SolutionCard({super.key});

  @override
  State<SolutionCard> createState() => _SolutionCardState();
}

class _SolutionCardState extends State<SolutionCard> {
  int _currentIndex = -1; // Tracks the index of the single 1

  List<int> states = List.filled(11, 0);

  void activateState(int index) {
    if (_currentIndex != -1) {
      states[_currentIndex] = 0; // Reset previous 1
    }
    states[index] = 1;
    _currentIndex = index;
    super.setState(() {}); // Trigger state rebuild
    return;
  }

  int getState(int index) {
    return states[index];
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> buildChildren() {
      if (_currentIndex == 0) {
        return [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 220, 220, 220),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 3)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    //Teachers list
                    children: [
                      Text(
                        
                        'Faculty',
                        style: TextStyle(
                          fontSize: 30,
                          backgroundColor: Colors.lightBlue[300],
                        ),
                      ),
                      Text('Mr. Anubhav Singh'),
                      Text('Mrs. Rekha Bakshi'),
                      Text('Mr. Koushik Yadav'),
                      Text('Mrs. Kanishka Singhal'),
                    ],
                  ),
                ),
              ),
              Container(
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 220, 220, 220),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 3)),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //Teachers list
                      children: [
                        Text(
                          'Students',
                          style: TextStyle(
                              fontSize: 30,
                              backgroundColor: Colors.lightBlue[300]),
                        ),
                        Text('Aditya Vishwakarma'),
                        Text('Sandeep Hooda'),
                        Text('Radhika Goel'),
                        Text('Harshita Sharma'),
                        Text('Piyush Tiwari'),
                        Text('Junaid Khan'),
                        Text('Shreya Mittal'),
                        Text('Kanchan Sahu'),
                        Text('Sarth Karki'),
                        Text('Aman Kumar'),
                        Text('Junaid Khan'),
                        Text('Shreya Mittal'),
                        Text('Kanchan Sahu'),
                        Text('Sarth Karki'),
                        Text('Aman Kumar'),
                      ],
                    ),
                  ))
            ],
          ),
          Column(
            children: [
              Text(
                'Habitual Solutions',
                style: TextStyle(
                    fontSize: 30, backgroundColor: Colors.lightBlue[300]),
              )
            ],
          ),
          Column(
            children: [
              Text(
                'Infrastructural Solutions',
                style: TextStyle(
                    fontSize: 30, backgroundColor: Colors.lightBlue[300]),
              ),
              Text(
                  "Fix leaks promptly by regularly checking and repairing faucets and pipes")
            ],
          )
          // Your widgets for condition 0
        ];
      } else if (_currentIndex == 1) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 2) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 3) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 4) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 5) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 6) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 7) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 8) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 9) {
        return [
          // Your widgets for condition 1
        ];
      } else if (_currentIndex == 10) {
        return [
          // Your widgets for condition 1
        ];
      }

      return [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[0] = 1; // Activate index 0
                  _currentIndex = 0; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[1] = 1; // Activate index 0
                  _currentIndex = 1; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[2] = 1; // Activate index 0
                  _currentIndex = 2; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[3] = 1; // Activate index 0
                  _currentIndex = 3; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[4] = 1; // Activate index 0
                  _currentIndex = 4; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[5] = 1; // Activate index 0
                  _currentIndex = 5; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[6] = 1; // Activate index 0
                  _currentIndex = 6; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[7] = 1; // Activate index 0
                  _currentIndex = 7; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[8] = 1; // Activate index 0
                  _currentIndex = 8; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[9] = 1; // Activate index 0
                  _currentIndex = 9; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 226, 226, 226),
          ),
          width: 250,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          height: 300,
          child: Column(
            //Solution Card
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: AlignmentDirectional(0, 0),
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 42, 39, 126),
                ),
                child: Text(
                  'Renewable Energy Resources',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Teachers'), Text('4')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Students'), Text('10')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Resources'), Text('1000/2000')],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_currentIndex != -1) {
                    states[_currentIndex] = 0; // Reset previous 1
                  }
                  states[10] = 1; // Activate index 0
                  _currentIndex = 10; // Update current index
                  super.setState(() {}); // Trigger state rebuild
                }, // Replace with login function
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Remove border radius
                  ),
                ),
                child: Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    }

    return Container(
      width: 950.0, // Set your desired width
      // color: Colors.amber,
      child: Wrap(
        spacing: 100.0,
        runSpacing: 30.0,
        children: buildChildren(),
      ),
    );
  }
}
