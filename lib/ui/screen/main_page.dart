// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:core_mvc/ui/screen/home/home_page.dart';
import 'package:core_mvc/ui/screen/profile/ProfilePage.dart';

class MainPage extends StatefulWidget{
  @override
  final String title;
  MainPage({Key key, this.title}):super(key:key);
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  int _currentIndex = 0;
  final List<Widget> _childrenWidget = [
    HomePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'User'
          ),

        ],
      ),
      body: SafeArea(
          child: _childrenWidget[_currentIndex]
      ),
    );
  }
  void _onTapTapped(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
}