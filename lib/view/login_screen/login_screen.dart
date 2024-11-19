import 'package:flutter/material.dart';
import 'package:task_1/view/Profile_page.dart/profile_page.dart';
import 'package:task_1/view/order_page/order_page.dart';

class MainInterface extends StatefulWidget {
  final String walletAddress;

  const MainInterface(this.walletAddress, {super.key});

  @override
  State<MainInterface> createState() => _MainInterfaceState();
}

class _MainInterfaceState extends State<MainInterface> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    OrderPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
