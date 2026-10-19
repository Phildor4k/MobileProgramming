import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transitions")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 400),
                    reverseTransitionDuration: const Duration(milliseconds: 400),
                    pageBuilder: (context, animation, secondaryAnimation)=> const DetailsScreen(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                      return FadeTransition(
                        opacity: animation,
                        child: ScaleTransition(scale: Tween<double>(begin: 0.8, end: 1).animate(animation), child: child)
                      );
                    }
                  )
                );
              },
              child: const Text("Open details")
            )
          ]
        )
      )
    );
  }
}

class DetailsScreen extends StatelessWidget{
  const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: const Center(child: Text("Details screen"))
    );
  }
}
