import 'package:flutter/material.dart';

class CategoryLabel extends StatelessWidget {
  const CategoryLabel({
    super.key,
    required this.category,
  });

  final String category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffEF6A37)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(category, style: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
