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
      GoRoute(
        path: "/",
        pageBuilder: (context, state)=> buildPage(const HomeScreen(), key: state.pageKey)
      ),
      GoRoute(
        path: "/details",
        pageBuilder: (context, state)=> buildPage(const DetailsScreen(), key: state.pageKey)
      )
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
CustomTransitionPage<void> buildPage(Widget child, {
  LocalKey? key
}){
  return CustomTransitionPage<void>(
    key: key,
    child: child,
    transitionDuration: const Duration(milliseconds: 400),
    reverseTransitionDuration: const Duration(milliseconds: 400),
    transitionsBuilder: (context, animation, secondaryAnimation, child){
      return SlideTransition(
        position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero).animate(animation),
        child: ScaleTransition(scale: Tween<double>(begin: 0.8, end: 1).animate(animation), child: child),
      );
    },
  );
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
              context.push("/details");
            }, child: const Text("Open details"))
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
