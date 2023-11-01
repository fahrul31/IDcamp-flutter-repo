import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xffEF6A37)),
        child: Center(
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
