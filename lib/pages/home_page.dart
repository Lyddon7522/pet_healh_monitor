import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> navItems = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Monitor',),
    BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined_rounded), label: 'History',),
    BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Pets',),
    //BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More',),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pet Health"),
      ),
      body: const Image(
          image: AssetImage('assets/JudePic.png'),
          fit: BoxFit.cover,
          alignment: Alignment.center,
          ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: navItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
