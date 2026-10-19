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
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const BackOrExitButton(),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailsScreen()));
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
      body: const Center(child: BackOrExitButton())
    );
  }
}

class BackOrExitButton extends StatelessWidget{
  const BackOrExitButton({super.key});
  @override
  Widget build(BuildContext context){
    final canPop = Navigator.canPop(context);
    return ElevatedButton(
      onPressed: canPop ? ()=> Navigator.pop(context) : null,
      child: Text(canPop ? "Back" : "Nothing to go back to")
    );
  }
}
