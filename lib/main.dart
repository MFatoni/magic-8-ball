import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(
    MaterialApp(
      home: MagicBallPage(),
    ),
  );
}

class MagicBallPage extends StatelessWidget {
  const MagicBallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue.shade200,
      body: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int randomBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            randomBall = math.Random().nextInt(4) + 1;
          });
          debugPrint('clicked');
        },
        child: Image.asset('images/ball$randomBall.png'),
      ),
    );
  }
}
