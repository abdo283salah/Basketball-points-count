import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int scor1 = 0;
  int scor2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Team A",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "$scor1",
                    style: TextStyle(fontSize: 100),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          scor1++;
                        });
                      },
                      child: Text("add 1 point")),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          scor1 = scor1 + 2;
                        });
                      },
                      child: Text("add 2 point")),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          scor1 = scor1 + 3;
                        });
                      },
                      child: Text("add 3 point")),
                ],
              ),
              VerticalDivider(
                thickness: 2,
                color: Colors.grey,
              ),
              Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Team B",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "$scor2",
                    style: TextStyle(fontSize: 100),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          scor2++;
                        });
                      },
                      child: Text("add 1 point")),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          scor2 = scor2 + 2;
                        });
                      },
                      child: Text("add 2 point")),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {
                        setState(() {
                          scor2 = scor2 + 3;
                        });
                      },
                      child: Text("add 3 point")),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                setState(() {
                  scor1 = 0;
                  scor2 = 0;
                });
              },
              child: Text("Reset"))
        ],
      ),
    );
  }
}
