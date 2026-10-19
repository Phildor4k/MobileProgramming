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
  int counter = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter", style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.push<int>(context, MaterialPageRoute(builder: (context)=> EditorScreen(counter: counter)));
                if(!mounted || result == null) return;
                setState((){
                  counter = result;
                });
              },
              child: const Text("Edit")
            )
          ]
        )
      )
    );
  }
}

class EditorScreen extends StatefulWidget{
  final int counter;
  const EditorScreen({super.key, required this.counter});
  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen>{
  late int counter = widget.counter;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Editor")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter", style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              setState((){
                counter++;
              });
            }, child: const Text("+")),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              setState((){
                counter--;
              });
            }, child: const Text("-")),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              Navigator.pop(context, counter);
            }, child: const Text("Save"))
          ]
        )
      )
    );
  }
}
