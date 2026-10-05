import 'package:flutter/material.dart';

class ActionsScreen extends StatefulWidget{
  const ActionsScreen({super.key});

  @override
  State<ActionsScreen> createState() => _ActionsScreen();
}

class _ActionsScreen extends State<ActionsScreen>{
  int counter = 0;

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Actions",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      body: Column(
        children: [
          Text("Counter: $counter"),
          OutlinedButton(
            onPressed: (){
              setState(() {
                counter = 0;
              });
            }, 
            child: const Text("Reset"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}