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
      GoRoute(
        path: "/product/:id",
        builder: (context, state)=> ProductScreen(id: state.pathParameters["id"]!)
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

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              context.push("/product/1");
            }, child: const Text("Product 1")),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              context.push("/product/2");
            }, child: const Text("Product 2")),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              context.push("/product/3");
            }, child: const Text("Product 3"))
          ]
        )
      )
    );
  }
}

class ProductScreen extends StatelessWidget{
  final String id;
  const ProductScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Product")), body: Center(child: Text("Product #$id")));
  }
}
