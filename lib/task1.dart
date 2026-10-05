import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: darkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Settings",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        body: Column(
          children: [
            SwitchListTile(
              title: const Text("Dark Mode"),
              value: darkMode,
              onChanged: (bool value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
            CheckboxListTile(
              title: const Text("Agree to Terms"),
              value: agreeToTerms,
              onChanged: (bool? value) {
                setState(() {
                  agreeToTerms = value ?? false;
                });
              },
            ),
            ElevatedButton(
              onPressed: agreeToTerms
                  ? () {
                      debugPrint("Button clicked!");
                    }
                  : null,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}