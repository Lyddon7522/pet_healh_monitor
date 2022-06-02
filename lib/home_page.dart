import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pet Health"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Monitor',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart_outlined_rounded),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              label: 'Pets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'More',
            ),
          ],
          selectedItemColor: Colors.cyan,
        ),
      );
  }
}