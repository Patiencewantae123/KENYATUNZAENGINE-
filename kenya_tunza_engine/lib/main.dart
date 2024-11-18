import 'package:flutter/material.dart';
import 'package:kenya_tunza_engine/screens/trending_screen.dart';
import 'package:kenya_tunza_engine/screens/profile_screen.dart';
import 'package:kenya_tunza_engine/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0; // The current index of the BottomNavigationBar

  // List of screens corresponding to the Bottom Navigation
  final List<Widget> _screens = [
    SearchScreen(),
    TrendingScreen(),
    ProfileScreen(),
  ];

  // Method to handle the BottomNavigationBar tap
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KenyaSearchEngine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.blueAccent,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'KenyaTunzaEngine',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Implement search action
              },
            ),
          ],
        ),
        body: _screens[_currentIndex], // Display the current screen
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              label: 'Trending',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
