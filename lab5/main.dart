import 'package:flutter/material.dart';
import 'task1_1.dart' as task1_1;
import 'task1_2.dart' as task1_2;
import 'task1_3.dart' as task1_3;
import 'task1_4.dart' as task1_4;
import 'task1_5.dart' as task1_5;
import 'task2_1.dart' as task2_1;
import 'task2_2.dart' as task2_2;
import 'task2_3.dart' as task2_3;
import 'task2_4.dart' as task2_4;
import 'task2_5.dart' as task2_5;
import 'task3_1.dart' as task3_1;
import 'task3_2.dart' as task3_2;
import 'task3_3.dart' as task3_3;
import 'task3_4.dart' as task3_4;
import 'task3_5.dart' as task3_5;
import 'task4_1.dart' as task4_1;
import 'task4_2.dart' as task4_2;
import 'task4_3.dart' as task4_3;
import 'task4_4.dart' as task4_4;
import 'task4_5.dart' as task4_5;
import 'task5_1.dart' as task5_1;
import 'task5_2.dart' as task5_2;
import 'task5_3.dart' as task5_3;
import 'task5_4.dart' as task5_4;
import 'task6_1.dart' as task6_1;
import 'task6_2.dart' as task6_2;
import 'task6_3.dart' as task6_3;
import 'task6_4.dart' as task6_4;
import 'task6_5.dart' as task6_5;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Lab 5 exercises")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text("Category 1", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 1.1", child: task1_1.MyApp()))
              );
            },
            child: const Text("Task 1.1")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 1.2", child: task1_2.MyApp()))
              );
            },
            child: const Text("Task 1.2")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 1.3", child: task1_3.MyApp()))
              );
            },
            child: const Text("Task 1.3")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 1.4", child: task1_4.MyApp()))
              );
            },
            child: const Text("Task 1.4")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 1.5", child: task1_5.MyApp()))
              );
            },
            child: const Text("Task 1.5")
          ),
          const SizedBox(height: 30),
          const Text("Category 2", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 2.1", child: task2_1.MyApp()))
              );
            },
            child: const Text("Task 2.1")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 2.2", child: task2_2.MyApp()))
              );
            },
            child: const Text("Task 2.2")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 2.3", child: task2_3.MyApp()))
              );
            },
            child: const Text("Task 2.3")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 2.4", child: task2_4.MyApp()))
              );
            },
            child: const Text("Task 2.4")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 2.5", child: task2_5.MyApp()))
              );
            },
            child: const Text("Task 2.5")
          ),
          const SizedBox(height: 30),
          const Text("Category 3", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 3.1", child: task3_1.MyApp()))
              );
            },
            child: const Text("Task 3.1")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 3.2", child: task3_2.MyApp()))
              );
            },
            child: const Text("Task 3.2")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 3.3", child: task3_3.MyApp()))
              );
            },
            child: const Text("Task 3.3")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 3.4", child: task3_4.MyApp()))
              );
            },
            child: const Text("Task 3.4")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 3.5", child: task3_5.MyApp()))
              );
            },
            child: const Text("Task 3.5")
          ),
          const SizedBox(height: 30),
          const Text("Category 4", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 4.1", child: task4_1.MyApp()))
              );
            },
            child: const Text("Task 4.1")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 4.2", child: task4_2.MyApp()))
              );
            },
            child: const Text("Task 4.2")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 4.3", child: task4_3.MyApp()))
              );
            },
            child: const Text("Task 4.3")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 4.4", child: task4_4.MyApp()))
              );
            },
            child: const Text("Task 4.4")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 4.5", child: task4_5.MyApp()))
              );
            },
            child: const Text("Task 4.5")
          ),
          const SizedBox(height: 30),
          const Text("Category 5", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 5.1", child: task5_1.MyApp()))
              );
            },
            child: const Text("Task 5.1")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 5.2", child: task5_2.MyApp()))
              );
            },
            child: const Text("Task 5.2")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 5.3", child: task5_3.MyApp()))
              );
            },
            child: const Text("Task 5.3")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 5.4", child: task5_4.MyApp()))
              );
            },
            child: const Text("Task 5.4")
          ),
          const SizedBox(height: 30),
          const Text("Category 6", style: TextStyle(fontSize: 22)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 6.1", child: task6_1.MyApp()))
              );
            },
            child: const Text("Task 6.1")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 6.2", child: task6_2.MyApp()))
              );
            },
            child: const Text("Task 6.2")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 6.3", child: task6_3.MyApp()))
              );
            },
            child: const Text("Task 6.3")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 6.4", child: task6_4.MyApp()))
              );
            },
            child: const Text("Task 6.4")
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> const TaskScreen(title: "Task 6.5", child: task6_5.MyApp()))
              );
            },
            child: const Text("Task 6.5")
          ),
          const SizedBox(height: 30),
        ]
      ),
    );
  }
}

class TaskScreen extends StatelessWidget{
  final String title;
  final Widget child;
  const TaskScreen({super.key, required this.title, required this.child});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          tooltip: "All tasks",
          icon: const Icon(Icons.home),
          onPressed: ()=> Navigator.pop(context)
        )
      ),
      body: child,
    );
  }
}
