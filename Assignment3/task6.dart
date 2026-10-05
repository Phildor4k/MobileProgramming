import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreen();
}

class _SliderScreen extends State<SliderScreen> {
  double volume = 50;
  DateTime? date;

  Future<void> pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100, 12, 31),
    );

    if (!mounted || picked == null) return;

    setState(() {
      date = picked;
    });
  }

  String formatDate(DateTime date) {
    final day = date.day.toString().padLeft(2, '0');
    final month = date.month.toString().padLeft(2, '0');

    return '$day/$month/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Date Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.volume_up, size: 50),
            Text(
              'Volume: ${volume.round()}%',
              style: const TextStyle(fontSize: 24),
            ),
            Slider(
              value: volume,
              min: 0,
              max: 100,
              divisions: 100,
              label: '${volume.round()}%',
              onChanged: (value) {
                setState(() {
                  volume = value;
                });
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: pickDate,
              child: const Text('Choose date'),
            ),
            const SizedBox(height: 15),
            Text(
              date == null ? 'No date selected' : formatDate(date!),
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}