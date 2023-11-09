// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

class AdjustTime extends StatefulWidget {
  const AdjustTime({super.key});

  @override
  State<AdjustTime> createState() => _AdjustTimeState();
}

class _AdjustTimeState extends State<AdjustTime> {
  String days = "";
  String mounths = "";
  String daysNUmber = "";
  String year = "";
  int hour = 0;
  String sec = "";
  String mint = "";
  String greating = "";

  setTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        year = DateTime.now().year.toString();
        mounths = DateTime.now().month.toString();
        if (mounths == "11") {
          mounths = "september";
        }
        daysNUmber = DateTime.now().day.toString();
        hour = DateTime.now().hour;
        if (hour > 12) {
          hour -= 12;
        }
        mint = DateTime.now().minute.toString();
        sec = DateTime.now().second.toString();
        days = DateTime.now().weekday.toString();
        if (days == "4") {
          days = "thursday";
        }
      });
    });
  }

  calledAfterSeconds() {
    Timer(Duration(seconds: 7), () {
      setState(() {
        greating = "WELLCOME YOUR TIME IS";
      });
    });
  }

  @override
  void initState() {
    setTimer();
    calledAfterSeconds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "TIME &DATA APP",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              " $greating",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Todays is $days",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "$mounths $daysNUmber  $year",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${hour.toString().padLeft(2, "0")} :${mint.padLeft(2, "0")}: ${sec.padLeft(2, "0")}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
