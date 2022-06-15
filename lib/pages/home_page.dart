import 'package:flutter/material.dart';
import 'package:pet_healh_monitor/pages/pets_page.dart';
import 'package:pet_healh_monitor/pages/history_page.dart';
import 'package:pet_healh_monitor/pages/monitor_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> navItems = const [
    //BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Monitor',),
    BottomNavigationBarItem(icon: Icon(Icons.insert_chart_outlined_rounded), label: 'History',),
    BottomNavigationBarItem(icon: Icon(Icons.pets), label: 'Pets',),
    //BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More',),
  ];

  final pages = [
    //HomePage(),
    const MonitorPage(),
    const HistoryPage(),
    const PetsPage(),
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
      body: IndexedStack(
          index: _selectedIndex,
          children: pages,
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

