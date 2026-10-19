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
        AppRoutes.profile: (context)=> const ProfileScreen()
      },
    );
  }
}

class AppRoutes{
  static const home = "/";
  static const profile = "/profile";
}

class User{
  final String name;
  final int age;
  final String city;
  const User(this.name, this.age, this.city);
}
const users = [
  User("Ali", 20, "Andijan"),
  User("Vali", 21, "Tashkent"),
  User("Ezoza", 20, "Samarkand"),
  User("Sardor", 22, "Bukhara")
];

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users")),
      body: ListView(
        children: [
          for(final user in users) ListTile(
            title: Text(user.name),
            onTap: ()=> Navigator.pushNamed(context, AppRoutes.profile, arguments: user)
          )
        ]
      )
    );
  }
}

class ProfileScreen extends StatelessWidget{
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.name),
            const SizedBox(height: 30),
            Text("Age: ${user.age}"),
            const SizedBox(height: 30),
            Text("City: ${user.city}")
          ]
        )
      )
    );
  }
}
