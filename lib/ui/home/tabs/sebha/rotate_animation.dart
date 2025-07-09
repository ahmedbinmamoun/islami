
import 'package:flutter/material.dart';


class RotateImageExample extends StatefulWidget {
  const RotateImageExample({Key? key}) : super(key: key);

  @override
  State<RotateImageExample> createState() => _RotateImageExampleState();
}

class _RotateImageExampleState extends State<RotateImageExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _angle = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _rotateImage() {
    setState(() {
      _angle += 0.5; // Rotate 0.5 radians (~28.6 degrees)
    });
    _controller.forward(from: 0); // Restart animation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rotate Image on Click")),
      body: Center(
        child: GestureDetector(
          onTap: _rotateImage,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: _angle * _controller.value,
                child: child,
              );
            },
            child: Image.asset('assets/your_image.png', width: 150),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


