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
      routes: {
        AppRoutes.home: (context)=> const HomeScreen(title: "Home"),
        AppRoutes.profile: (context)=> const HomeScreen(title: "Profile"),
        AppRoutes.messages: (context)=> const HomeScreen(title: "Messages"),
        AppRoutes.about: (context)=> const HomeScreen(title: "About")
      }
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
  final String title;
  const HomeScreen({super.key, this.title = "Home"});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(
              title: const Text("Home"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              }
            ),
            ListTile(
              title: const Text("Profile"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, AppRoutes.profile);
              }
            ),
            ListTile(
              title: const Text("Messages"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, AppRoutes.messages);
              }
            ),
            ListTile(
              title: const Text("About"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, AppRoutes.about);
              }
            )
          ]
        )
      ),
      body: Center(child: Text("$title screen")),
    );
  }
}
