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

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  final name = TextEditingController();
  @override
  void dispose(){
    name.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Name")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(controller: name, decoration: const InputDecoration(labelText: "Name")),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> GreetingScreen(name: name.text)));
                },
                child: const Text("Greet")
              )
            ]
          )
        )
      )
    );
  }
}

class GreetingScreen extends StatelessWidget{
  final String name;
  const GreetingScreen({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Greeting")), body: Center(child: Text("Hello, $name!")));
  }
}
