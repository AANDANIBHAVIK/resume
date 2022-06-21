import 'package:flutter/material.dart';
import 'package:resume/first.dart';
import 'package:resume/fourth.dart';
import 'package:resume/second.dart';
import 'package:resume/third.dart';

import 'five.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/second',
      routes: {
        '/':(context) => Resume(),
        '/second':(context) => second(),
        '/third' :(context) => third(),
        '/fourth' :(context) => fourth(),
        '/five' :(context) => five(),

      },
    ),
  );
}