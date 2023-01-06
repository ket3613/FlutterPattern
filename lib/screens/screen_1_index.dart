import 'package:flutter/material.dart';

class Screens1Index extends StatelessWidget {
  const Screens1Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('index'),
          onPressed: () {
            // Named route를 사용하여 두 번째 화면으로 전환합니다.
          },
        ),
      ),
    );
  }
}