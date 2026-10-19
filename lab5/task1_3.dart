import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: const LoginScreen());
  }
}

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Login Screen"), ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context)=> const HomeScreen())
            );
          },
          child: const Text("Sign in")
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: const Center(child: Text("You are signed in"))
    );
  }
}
