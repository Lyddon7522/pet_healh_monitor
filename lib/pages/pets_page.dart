import 'package:flutter/material.dart';

class PetsPage extends StatelessWidget{
  const PetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Pets'),
    ),
    body: const Center(child: Text('Pets'),),
  );
}