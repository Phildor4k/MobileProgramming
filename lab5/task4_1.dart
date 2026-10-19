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
        AppRoutes.details: (context)=> const DetailsScreen()
      },
    );
  }
}

class AppRoutes{
  static const home = "/";
  static const details = "/details";
}

class ScreenArguments{
  final String title;
  final String message;
  const ScreenArguments(this.title, this.message);
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
                Navigator.pushNamed(
                  context,
                  AppRoutes.details,
                  arguments: const ScreenArguments("Welcome", "Sent from Home")
                );
              },
              child: const Text("Send arguments")
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
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(title: Text("${args.title}")),
      body: Center(child: Text(args.message))
    );
  }
}
