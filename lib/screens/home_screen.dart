// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel/widgets/destination_corousel.dart';
import 'package:travel/widgets/hotel_corousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;
  var _currentTab = 0;

  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.airbnb,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () => setState(() {
        _selectedIndex = index;
      }),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: _selectedIndex == index
              ? Theme.of(context).primaryColorLight
              : Color(0xFFE7EBEE),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //provides dynamicity in different systems
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 120.0),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ..._icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ],
            ),
            SizedBox(height: 20.0),
            DestinationCorousel(),
            SizedBox(height: 20.0),
            HotelCorousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        selectedFontSize: 15.0,
        unselectedFontSize: 13.0,
        //selectedItemColor: Colors.red,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_bar,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage('https://i.imgur.com/vZxWGil.jpeg'),
              radius: 10.0,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
