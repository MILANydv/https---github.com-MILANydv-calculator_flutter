import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      // Calculator
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Simple Interest'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/calculator',
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Calculate Simple '),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/simplecalculator',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
