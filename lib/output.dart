import 'package:flutter/material.dart';
import 'package:simple_interest/arthmetic.dart';

class OutPut extends StatefulWidget {
  const OutPut({Key? key}) : super(key: key);

  @override
  State<OutPut> createState() => _OutPutState();
}

class _OutPutState extends State<OutPut> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arthmetic;
    return Scaffold(
        appBar: AppBar(
          title: const Text("OutPut Screen"),
        ),
        body: Center(
          child: Text(args.add().toString()),
        ));
  }
}
