import 'package:flutter/material.dart';
import 'package:flutter_dicoding_pemula/ui/HomePage.dart';
import 'package:flutter_dicoding_pemula/ui/LearningPage.dart';
import 'package:flutter_dicoding_pemula/ui/AboutPage.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    LearningPage(),
    AboutPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chrome_reader_mode),
            label: 'Learning',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
