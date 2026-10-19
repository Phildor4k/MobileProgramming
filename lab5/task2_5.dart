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
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (context)=> const LoginScreen(),
        AppRoutes.home: (context)=> const HomeScreen(),
        AppRoutes.profile: (context)=> const ProfileScreen()
      }
    );
  }
}

class AppRoutes{
  static const home = "/home";
  static const login = "/login";
  static const profile = "/profile";
}

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, AppRoutes.home);
              },
              child: const Text("Sign in")
            )
          ]
        )
      )
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.profile);
              },
              child: const Text("Profile")
            )
          ]
        )
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, AppRoutes.login, (route)=> false);
              },
              child: const Text("Log out")
            )
          ]
        )
      )
    );
  }
}
