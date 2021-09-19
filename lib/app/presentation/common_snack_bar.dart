import 'package:flutter/material.dart';

class CommonSnackBar {
  CommonSnackBar._(this.context);

  factory CommonSnackBar.of(BuildContext context) => CommonSnackBar._(context);

  BuildContext context;

  void _showSnack(String message, IconData icon, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: color,
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 5),
            Expanded(child: Text(message)),
          ],
        ),
      ),
    );
  }

  void danger(String message) => _showSnack(message, Icons.dangerous, Colors.red);

  void warning(String message) => _showSnack(message, Icons.warning, Colors.orange);

  void success(String message) => _showSnack(message, Icons.check, Colors.green);
}
