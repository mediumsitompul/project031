import 'package:flutter/material.dart';

class WelcomePage0 extends StatelessWidget {
  final String lat1, lng1;

  const WelcomePage0({super.key, required this.lat1, required this.lng1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyProject0(lat1a: lat1, lng1a: lng1),
    );
  }
}

class MyProject0 extends StatefulWidget {
  final String lat1a, lng1a;
  const MyProject0({super.key, required this.lat1a, required this.lng1a});

  @override
  State<MyProject0> createState() => _MyProject0State();
}

class _MyProject0State extends State<MyProject0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(widget.lat1a)),
          Center(child: Text(widget.lng1a)),
        ],
      ),
    );
  }
}
