import 'package:flutter/material.dart';
import 'package:simple_interest/calculator.dart';
import 'package:simple_interest/homepage.dart';
import 'package:simple_interest/output.dart';
import 'package:simple_interest/simplecalculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Interest Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/calculator': (context) => const CalculatorPage(),
        '/simplecalculator': (context) => const SimpleCalculator(),
        '/output': (context) => const OutPut(),
        
      },
    );
  }
}
