import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false, home: const HomeScreen());
  }
}

class Contact{
  final String name;
  final String phone;
  final String email;
  const Contact(this.name, this.phone, this.email);
}
const contacts = [
  Contact("Ali", "+998901111111", "ali@example.com"),
  Contact("Vali", "+998902222222", "vali@example.com"),
  Contact("Sardor", "+998903333333", "sardor@example.com"),
  Contact("Ezoza", "+998904444444", "ezoza@example.com"),
  Contact("Aziza", "+998905555555", "aziza@example.com")
];

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts")),
      body: ListView(
        children: [
          for(final contact in contacts) ListTile(
            title: Text(contact.name),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactScreen(contact: contact)));
            }
          )
        ]
      )
    );
  }
}

class ContactScreen extends StatelessWidget{
  final Contact contact;
  const ContactScreen({super.key, required this.contact});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact")),
      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person, size: 60),
                Text(contact.name, style: const TextStyle(fontSize: 26)),
                const SizedBox(height: 20),
                Text(contact.phone),
                Text(contact.email)
              ]
            )
          )
        )
      )
    );
  }
}
