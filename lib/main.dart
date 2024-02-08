import 'package:flutter/material.dart';
import 'package:navigatin/firstScreen.dart';
import 'package:navigatin/manScreen.dart';
import 'package:navigatin/womenScreen.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => FirstScreen(),
        '/manScreen': (context) => ManScreen(),
        '/womenScreen': (context) => WomenScreen(),
      },
    );
  }
}
