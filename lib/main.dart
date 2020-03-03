import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/quickstart.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quickstart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Quickstart(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('any'),
      ),
      body: Center(
        child: Text('Mitte'),
      ),
    );
  }
}
