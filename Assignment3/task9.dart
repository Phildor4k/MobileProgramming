import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreen();
}

class _NavigationScreen extends State<NavigationScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            index == 0
                ? 'Home'
                : index == 1
                    ? 'Search'
                    : 'Profile',
          ),
          bottom: index == 0
              ? const TabBar(
                  tabs: [
                    Tab(text: 'Chats'),
                    Tab(text: 'Updates'),
                    Tab(text: 'Calls'),
                  ],
                )
              : null,
        ),
        body: IndexedStack(
          index: index,
          children: const [
            TabBarView(
              children: [
                Center(
                  child: Text(
                    'Your chats',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Center(
                  child: Text(
                    'Your updates',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Center(
                  child: Text(
                    'Your calls',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                'Search screen',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                'Profile screen',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}