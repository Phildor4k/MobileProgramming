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
                      return SlideTransition(
                        position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(animation),
                        child: child
                      );
                    }
                  )
                );
              },
              child: const Text("Open from right")
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    reverseTransitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (context, animation, secondaryAnimation)=> const DetailsScreen(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child){
                      return SlideTransition(
                        position: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
                        child: child
                      );
                    }
                  )
                );
              },
              child: const Text("Open as a sheet")
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
