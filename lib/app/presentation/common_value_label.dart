import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonValueLabel extends StatelessWidget {
  const CommonValueLabel({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<TextSpan> children;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          // decoration: TextDecoration.underline,
        ),
        children: children,
      ),
    );
  }
}
