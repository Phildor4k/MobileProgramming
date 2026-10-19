import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<MyApp> createState()=> _MyAppState();
}

class _MyAppState extends State<MyApp>{
  late final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/", builder: (context, state)=> const HomeScreen()),
      GoRoute(path: "/details", builder: (context, state)=> const DetailsScreen())
    ],
  );
  @override
  void dispose(){
    router.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: router);
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
            ElevatedButton(onPressed: (){
              context.go("/details");
            }, child: const Text("go (replace stack)")),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                context.push("/details");
              },
              child: const Text("push (add to stack)")
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: context.canPop() ? ()=> context.pop() : null, child: const Text("pop")),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              context.go("/");
            }, child: const Text("Home"))
          ]
        )
      )
    );
  }
}
