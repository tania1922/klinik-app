import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Button Section Example'),
        ),
        body: const Center(
          child: ButtonSection(),
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAligment: MainAxisAligment.spaceEvenly,
      children: [
        _buildButton(color, Icons.call, 'CALL'),
        _buildButton(color, Icons.near_me, 'ROUTE'),
        _buildButton(color, Icons.share, 'SHARE'),
      ],
    );
  }
  
  Widget _buildButton(Color color, IconData icon, String label)
   { return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAligment: MainAxisAligment.center,
        children: [
          Icon(icon, color: color),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ]
    );  
  }
}