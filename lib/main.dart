import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_test101/screen/automation_device.dart';
import 'package:home_test101/screen/home_page.dart';
import 'package:home_test101/screen/lamp_controller.dart';
import 'package:home_test101/screen/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _index = 0;
final List<Widget> _pages = [
  HomePage(),
  AutomationDevice(),
  LampController(),
  SettingsPage()
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 90, 90, 90),
        showSelectedLabels: true,
        onTap: _onItemTapped,
        currentIndex: _index,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_sharp),
            label: 'Automation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_home_sharp),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
