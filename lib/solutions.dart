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
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                ),
                onPressed: () {
                  states[_currentIndex] = 0; // Activate index 0
                  _currentIndex = -1; // Update current index
                  super.setState(() {}); //
                },
                child: Icon(
                  Icons.arrow_circle_left,
                  size: 50,
                ),
              ),
            ],
          ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //Teachers list
                    children: [
                      Text(
                        'Faculty',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'Mr. Anubhav Singh',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Mrs. Rekha Bakshi',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Mr. Koushik Yadav',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Mrs. Kanishka Singhal',
                        style: TextStyle(fontSize: 18),
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    //Teachers list
                    children: [
                      Text(
                        'Students',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'Aditya Vishwakarma',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Sandeep Hooda',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Radhika Goel',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Harshita Sharma',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Piyush Tiwari',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Junaid Khan',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Shreya Mittal',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Kanchan Sahu',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Sarth Karki',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Aman Kumar',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Aditya Vishwakarma',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Sandeep Hooda',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Radhika Goel',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Harshita Sharma',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Piyush Tiwari',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Junaid Khan',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Shreya Mittal',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Kanchan Sahu',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Sarth Karki',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Aman Kumar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[300],
                          borderRadius: BorderRadius.circular(15)
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'Habitual Solutions',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 500,
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          'Reduce water flow without compromising usability',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 500,
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          'Regularly check and repair leaky faucets and pipes',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 500,
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          'Redirect used water from sinks for flushing toilets',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 500,
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        child: Text(
                          'Sweep driveways and sidewalks instead of using a hose',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Alert the students',
                          style: TextStyle(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Divider(),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[300],
                          borderRadius: BorderRadius.circular(15)
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          'Infrastructural Solutions',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 600,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {}, // Replace with login function
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 50, 177, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Fix leaks promptly by regularly checking and repairing faucets and pipes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 600,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {}, // Replace with login function
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 50, 177, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Integrate green roofs and permeable surfaces for natural water absorption",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 600,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {}, // Replace with login function
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 50, 177, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Implement systems to collect and store rainwater for non-drinking purposes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 600,
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {}, // Replace with login function
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 50, 177, 99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            "Invest in technology that optimizes watering based on weather data",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              )) // Your widgets for condition 0
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
