import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_four/Botton.dart';
import 'package:prac_four/datepicker.dart';
import 'package:prac_four/stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackWork(),
    );
  }
}
