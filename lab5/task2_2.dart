import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context)=> const HomeScreen(),
        AppRoutes.profile: (context)=> const ProfileScreen(),
        AppRoutes.messages: (context)=> const MessagesScreen(),
        AppRoutes.about: (context)=> const AboutScreen()
      },
    );
  }
}

class AppRoutes{
  static const home = "/";
  static const profile = "/profile";
  static const messages = "/messages";
  static const about = "/about";
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Profile"),
            onTap: ()=> Navigator.pushNamed(context, AppRoutes.profile)
          ),
          ListTile(
            title: const Text("Messages"),
            onTap: ()=> Navigator.pushNamed(context, AppRoutes.messages)
          ),
          ListTile(
            title: const Text("About"),
            onTap: ()=> Navigator.pushNamed(context, AppRoutes.about)
          )
        ]
      )
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: const Center(child: Text("Profile screen"))
    );
  }
}

class MessagesScreen extends StatelessWidget{
  const MessagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Messages")),
      body: const Center(child: Text("Messages screen"))
    );
  }
}

class AboutScreen extends StatelessWidget{
  const AboutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: const Center(child: Text("About screen"))
    );
  }
}
