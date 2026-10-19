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
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Colour")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 150, height: 150, color: color),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final c = await Navigator.push<Color>(context, MaterialPageRoute(builder: (context)=> const ColorScreen()));
                if(!mounted || c == null) return;
                setState((){
                  color = c;
                });
              },
              child: const Text("Choose colour")
            )
          ]
        )
      )
    );
  }
}

class ColorScreen extends StatelessWidget{
  const ColorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose colour")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white),
              onPressed: ()=> Navigator.pop(context, Colors.red),
              child: const Text("Red")
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
              onPressed: ()=> Navigator.pop(context, Colors.green),
              child: const Text("Green")
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
              onPressed: ()=> Navigator.pop(context, Colors.blue),
              child: const Text("Blue")
            )
          ]
        )
      )
    );
  }
}
