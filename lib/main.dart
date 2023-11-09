// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:settime/adjustTIme.dart';

void main() {
  runApp(SetTime());
}
class SetTime extends StatelessWidget {
  const SetTime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdjustTime(),
    );
  }
}