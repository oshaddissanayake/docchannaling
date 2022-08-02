import 'package:docchannaling/Pages/Blog/blogs.dart';
import 'package:docchannaling/Pages/Home/home.dart';
import 'package:docchannaling/Pages/Login/login_page.dart';
import 'package:docchannaling/Pages/Service/service.dart';
import 'package:docchannaling/Pages/Widgets/Profile_patient/patient.dart';
import 'package:flutter/material.dart';
class Bottom_navbar extends StatefulWidget {
  const Bottom_navbar({Key? key}) : super(key: key);

  @override
  _Bottom_navbarState createState() => _Bottom_navbarState();
}

class _Bottom_navbarState extends State<Bottom_navbar> {
  int selectedIndex= 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BlogsHome(),
    Services(),
    PatientProfile(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Business',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'School',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Settings',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child:  _widgetOptions.elementAt(selectedIndex),
      ),

    );
  }
}

