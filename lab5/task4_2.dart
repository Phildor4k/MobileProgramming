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
        AppRoutes.square: (context)=> const SquareScreen()
      },
    );
  }
}

class AppRoutes{
  static const home = "/";
  static const square = "/square";
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numbers")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.square, arguments: 1);
              },
              child: const Text("1")
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.square, arguments: 2);
              },
              child: const Text("2")
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.square, arguments: 3);
              },
              child: const Text("3")
            )
          ]
        )
      )
    );
  }
}

class SquareScreen extends StatelessWidget{
  const SquareScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final number = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(title: Text("Square")),
      body: Center(child: Text("Number: $number\nSquare: ${number * number}"))
    );
  }
}
