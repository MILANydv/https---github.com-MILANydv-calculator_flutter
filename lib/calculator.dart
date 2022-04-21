// simple Interest calculator

import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int? first, second, third;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interst Calculator'),
        elevation: 0,
      ),
      // simple interest calculator

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Simple Interest Calculator',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  onChanged: (value) => first = int.parse(value),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  onChanged: (value) => second = int.parse(value),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Rate of Interest',
                      hintText: 'Enter Rate of Interest',
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  onChanged: (value) => third = int.parse(value),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Time in years',
                    hintText: 'Enter Time in years',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Calculate'),
                    onPressed: () {
                      setState(() {
                        result = (first! * second! * third!) ~/ 100;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text("Simple Interest is $result"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
