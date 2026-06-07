import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: ImageGallery()),
);

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  int _image = 0;

  final List<String> images = [
    "assets/w4-s2/bird.jpg",
    "assets/w4-s2/bird2.jpg",
    "assets/w4-s2/insect.jpg",
    "assets/w4-s2/girl.jpg",
    "assets/w4-s2/man.jpg",
  ];

  void nextImage() {
    setState(() {
      _image = (_image + 1) % images.length;
    });
  }

  void previousImage() {
    setState(() {
      _image = (_image - 1 + images.length) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text('Image viewer'),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: 'Go to the previous image',
            onPressed: previousImage,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ),
        ],
      ),
      body: Center(child: Image.asset(images[_image])),
    );
  }
}
