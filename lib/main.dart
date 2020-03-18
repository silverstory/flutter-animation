import 'package:flutter/material.dart';
// import 'basic_animation_page.dart';
import 'animated_widget_page.dart';

// full tutorial
// https://resocoder.com/2019/08/05/flutter-animation-tutorial-refactoring-with-animatedwidget-animatedbuilder/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimationPage(),
    );
  }
}
