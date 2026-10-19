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
        AppRoutes.home: (context)=> const HomeScreen()
      },
      onUnknownRoute: (settings)=> MaterialPageRoute(settings: settings, builder: (context)=> const NotFoundScreen()),
    );
  }
}

class AppRoutes{
  static const home = "/";
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
                Navigator.pushNamed(context, "/does-not-exist");
              },
              child: const Text("Open missing page")
            )
          ]
        )
      )
    );
  }
}

class NotFoundScreen extends StatelessWidget{
  const NotFoundScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page not found")),
      body: const Center(child: Text("404 - Page not found"))
    );
  }
}
