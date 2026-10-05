import 'package:flutter/material.dart';
import 'task1.dart';
import 'task2.dart';
import 'task3.dart';
import 'task4.dart';
import 'task5.dart';
import 'task6.dart';
import 'task7.dart';
import 'task8.dart';
import 'task9.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Exercises"),
        ),

        body: Builder(
          builder: (context) {
            return Column(
              children: [

                // TASK 1
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ),
                    );
                  },
                  child: const Text("Task 1 - Settings"),
                ),

                const SizedBox(height: 20),
                // TASK 2
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Task 2 - Login"),
                ),

                const SizedBox(height: 20,),

                // Task 3

                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ActionsScreen(),
                      ),
                    );
                  }, 
                  child: const Text("Task 3 - Action")
                ),

                const SizedBox(height: 20,),

                //Task 4

                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const IndicatorScreen(),
                      )
                    );
                  },
                  child: const Text("Task 3 - Indicator")
                ),

                const SizedBox(height: 20,),

                //Task 5
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const DailogScreen(),
                      )
                    );
                  },
                  child: const Text("Task 5 - Dialog")
                ),

                const SizedBox(height: 20,),
                //Task 6
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const SliderScreen(),
                      )
                    );
                  },
                  child: const Text("Task 6 - Slider")
                ),

                const SizedBox(height: 20,),
                //Task 7
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const ListScreen(),
                      )
                    );
                  },
                  child: const Text("Task 7 - List")
                ),

                const SizedBox(height: 20,),
                //Task 8
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const GalleryScreen(),
                      )
                    );
                  },
                  child: const Text("Task 8 - Preview")
                ),

                const SizedBox(height: 20,),
                //Task 9
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> const NavigationScreen(),
                      )
                    );
                  },
                  child: const Text("Task 9 - Navigation")
                ),

                const SizedBox(height: 20,),
              ],
            );
          },
        ),
      ),
    );
  }
}