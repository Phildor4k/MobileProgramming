import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: const ScreenA());
  }
}

class ScreenA extends StatelessWidget{
  const ScreenA({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen A"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const ScreenB())
            );
          },
          child: const Text("Next")
        )
      ),
    );
  }
}

class ScreenB extends StatelessWidget{
  const ScreenB({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen B"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> const ScreenC())
            );
          },
          child: const Text("Next")
        )
      ),
    );
  }
}

class ScreenC extends StatelessWidget{
  const ScreenC({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Screen C"), backgroundColor: Colors.red, ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("Back")
        )
      ),
    );
  }
}
