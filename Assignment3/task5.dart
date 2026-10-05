import 'package:flutter/material.dart';

class DailogScreen extends StatefulWidget{
  const DailogScreen({super.key});

  @override 
  State<DailogScreen> createState() => _DialogScreen();
}

class _DialogScreen extends State<DailogScreen>{

  bool itemExists = true;

  Future<void> confirmDelete() async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Delete item?'),
          content: const Text('This action cannot be undone.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext, false);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext, true);
              },
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );

    if (!mounted) return;

    if (confirmed == true) {
      setState(() {
        itemExists = false;
      });
    }
  }

  Future<void> showShareOptions() async {
    final String? option = await showModalBottomSheet<String>(
      context: context,
      builder: (sheetContext) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Share by email'),
                onTap: () {
                  Navigator.pop(sheetContext, 'Email');
                },
              ),
              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('Share by message'),
                onTap: () {
                  Navigator.pop(sheetContext, 'Message');
                },
              ),
              ListTile(
                leading: const Icon(Icons.link),
                title: const Text('Copy link'),
                onTap: () {
                  Navigator.pop(sheetContext, 'Copy link');
                },
              ),
            ],
          ),
        );
      },
    );

    if (!mounted || option == null) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected: $option'),
      ),
    );
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dialog",
          style: TextStyle(color: Colors.brown),
        ),
      ),
      body: Column(
        children: [
          if (itemExists)
            ListTile(
              title: const Text('My item'),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: confirmDelete,
              ),
            )
          else
            const Text('Item deleted'),
          ElevatedButton(
            onPressed: showShareOptions,
            child: const Text('Share'),
          ),
        ],
      ),
    );
  }
   
}