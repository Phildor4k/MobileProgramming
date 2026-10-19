import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: const StepScreen());
  }
}

class StepScreen extends StatelessWidget{
  final int step;
  const StepScreen({super.key, this.step = 1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Step $step")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                if(step == 4){
                  Navigator.popUntil(context, (route)=> route.isFirst);
                }
                else {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> StepScreen(step: step + 1)));
                }
              },
              child: Text(step == 4 ? "Finish" : "Next")
            )
          ]
        )
      )
    );
  }
}
