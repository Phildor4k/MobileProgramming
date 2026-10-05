import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = List.generate(
      8,
      (index) => 'https://picsum.photos/seed/image$index/800/800',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: images.map((image) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PreviewScreen(image: image),
                ),
              );
            },
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class PreviewScreen extends StatelessWidget {
  final String image;

  const PreviewScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Center(
              child: Image.network(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}