import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget{
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('History'),
    ),
    body: const Center(child: Text('History'),),
  );
}