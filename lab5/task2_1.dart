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
        AppRoutes.home: (context)=> const HomeScreenCategory2(),
        AppRoutes.settings: (context)=> const SettingsScreen()
      },
    );
  }
}

class AppRoutes{
  static const home = "/";
  static const settings = "/settings";
}

class HomeScreenCategory2 extends StatelessWidget{
  const HomeScreenCategory2({super.key});
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
                Navigator.pushNamed(context, AppRoutes.settings);
              },
              child: const Text("Settings")
            )
          ]
        )
      )
    );
  }
}

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text("Back"))]
        )
      )
    );
  }
}
