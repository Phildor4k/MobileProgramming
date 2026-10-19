import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context)=> const HomeScreen(),
        AppRoutes.rate: (context)=> const RateScreen()
      },
    );
  }
}

class AppRoutes{
  static const home = "/";
  static const rate = "/rate";
}

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  final movie = "Interstellar";
  int? rating;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Movie")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(rating == null ? "$movie: Not rated" : "$movie: $rating/5"),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed<int>(context, AppRoutes.rate, arguments: movie);
                if(!mounted || result == null) return;
                setState((){
                  rating = result;
                });
              },
              child: const Text("Rate movie")
            )
          ]
        )
      )
    );
  }
}

class RateScreen extends StatelessWidget{
  const RateScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("$movie")),
      body: Center(
        child: Wrap(
          children: [
            for(int i = 1; i <= 5; i++) IconButton(
              tooltip: "$i/5",
              onPressed: ()=> Navigator.pop(context, i),
              icon: const Icon(Icons.star, color: Colors.amber),
              iconSize: 40
            )
          ]
        )
      )
    );
  }
}
