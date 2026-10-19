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
        path: "/product-details",
        builder: (context, state){
          final product = state.extra;
          if(product is Product){
            return ProductScreen(product: product);
          }
          return const MissingProductScreen();
        }
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

class Product{
  final String name;
  final double price;
  const Product(this.name, this.price);
}
const products = [Product("Laptop", 999.0), Product("Phone", 599.5), Product("Headphones", 79.9)];

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView(
        children: [
          for(final product in products) ListTile(
            title: Text(product.name),
            onTap: ()=> context.push("/product-details", extra: product)
          )
        ]
      )
    );
  }
}

class ProductScreen extends StatelessWidget{
  final Product product;
  const ProductScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${product.name}")),
      body: Center(child: Text("Price: \$${product.price}", style: const TextStyle(fontSize: 28)))
    );
  }
}

class MissingProductScreen extends StatelessWidget{
  const MissingProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product unavailable")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Please choose a product again"),
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
