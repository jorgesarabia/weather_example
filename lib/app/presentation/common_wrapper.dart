import 'package:flutter/material.dart';

class CommonWrapper extends StatelessWidget {
  const CommonWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4426CD),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.centerLeft,
                stops: const [0.3, 0.5],
                colors: [const Color(0xFF5B12AE).withOpacity(0.6), const Color(0xFF4426CD)],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
