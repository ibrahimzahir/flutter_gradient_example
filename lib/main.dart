import 'package:flutter/material.dart';
import 'package:flutter_gradient_example/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Custom Color Example',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
          primaryColor: secondaryColor),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter custom color example'),
        ),
        body: Center(
            child: Text(
          'Flutter custom color example',
        )),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // implement the app bar
      appBar: AppBar(
        title: const Text('Gradient AppBar'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.red, Colors.orange]),
          ),
        ),
      ),
    );
  }
}
