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
      GoRoute(path: "/", name: "home", builder: (context, state)=> const HomeScreen()),
      GoRoute(
        path: "/settings",
        name: "settings",
        builder: (context, state)=> const SettingsScreen()
      ),
      GoRoute(
        path: "/item/:id",
        name: "item",
        builder: (context, state)=> ItemScreen(id: state.pathParameters["id"]!)
      )
    ],
    errorBuilder: (context, state)=> const NotFoundScreen(),
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
              context.goNamed("settings");
            }, child: const Text("Settings")),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                context.goNamed("item", pathParameters: {
                  "id": "42"
                });
              },
              child: const Text("Item 42")
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              context.go("/does-not-exist");
            }, child: const Text("Missing page"))
          ]
        )
      )
    );
  }
}

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              context.goNamed("home");
            }, child: const Text("Home"))
          ]
        )
      )
    );
  }
}

class ItemScreen extends StatelessWidget{
  final String id;
  const ItemScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Item #$id")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              context.goNamed("home");
            }, child: const Text("Home"))
          ]
        )
      )
    );
  }
}

class NotFoundScreen extends StatelessWidget{
  const NotFoundScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page not found")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("404 - Page not found"),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              context.goNamed("home");
            }, child: const Text("Home"))
          ]
        )
      )
    );
  }
}
