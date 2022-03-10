import 'dart:math';
import 'package:bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 120.0;
  bool isMale = true;
  int Age = 18;
  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          "Bmi Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: isMale
                                    ? Colors.redAccent
                                    : Colors.grey.shade800),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male_outlined,
                                  size: 90,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: !isMale
                                    ? Colors.redAccent
                                    : Colors.grey[800]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female_outlined,
                                  size: 90,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[800]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "${height.round()}",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "CM",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Slider(
                            activeColor: Colors.redAccent,
                            value: height,
                            min: 80.0,
                            max: 220.0,
                            onChanged: (value) {
                              setState(() {
                                height = value;
                              });
                            })
                      ],
                    ),
                  ))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[800]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${Age.round()}",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.redAccent,
                                        onPressed: () {
                                          setState(() {
                                            Age--;
                                          });
                                        },
                                        heroTag: "age-",
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Colors.redAccent,
                                        onPressed: () {
                                          setState(() {
                                            Age++;
                                          });
                                        },
                                        heroTag: "age+",
                                        mini: true,
                                        child: Icon(Icons.add),
                                      )
                                    ],
                                  )
                                ],
                              ))),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[800]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${weight.round()}",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        backgroundColor: Colors.redAccent,
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        heroTag: "weight-",
                                        mini: true,
                                        child: Icon(Icons.remove),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      FloatingActionButton(
                                        backgroundColor: Colors.redAccent,
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        heroTag: "weight+",
                                        mini: true,
                                        child: Icon(Icons.add),
                                      )
                                    ],
                                  )
                                ],
                              )))
                    ],
                  ))),
          Container(
              height: 50,
              width: double.infinity,
              color: Colors.redAccent,
              child: MaterialButton(
                height: 50.0,
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Result(
                        result: result,
                        Age: Age,
                        isMale: isMale,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
