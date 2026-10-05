import 'package:flutter/material.dart';

class IndicatorScreen extends StatefulWidget{
  const IndicatorScreen({super.key});

  @override
  State<IndicatorScreen> createState() => _IndicatorScreen();
}

class _IndicatorScreen extends State<IndicatorScreen>{

  bool isLoading = false;
  bool isCompleted = false;

  Future<void> startOperation() async {

    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;
    setState(() {
      isLoading = false;
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Operation completed"),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            isCompleted = true;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Indicator",
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: isLoading ? const CircularProgressIndicator()
              : ElevatedButton(
                onPressed: startOperation, 
                child: const Text("Start"))
          )
        ],
      ),
    );
  }
}