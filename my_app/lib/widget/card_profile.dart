import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key, required this.icon, required this.text});

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 210, 208, 208),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(height: 8),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
