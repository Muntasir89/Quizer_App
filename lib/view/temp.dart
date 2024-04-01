import 'package:flutter/material.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temp page'),
      ),
      body: Center(
        child: Text('Temp body'),
      ),
    );
  }
}
