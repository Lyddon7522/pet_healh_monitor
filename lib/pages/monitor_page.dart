import 'package:flutter/material.dart';

class MonitorPage extends StatelessWidget{
  const MonitorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Monitor'),
    ),
    body: const Center(
      child: Text('Monitor'),
    ),
  );
}