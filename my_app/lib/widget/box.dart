import 'package:flutter/material.dart';
import 'package:my_app/ui/onboard_page.dart';

class BoxProfile extends StatelessWidget {
  const BoxProfile({super.key, required this.content, this.data = ""});

  final String content;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 210, 208, 208),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(children: [
            content != "Keluar"
                ? Text(
                    content,
                  )
                : InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, OnboardPage.routeName),
                    child: Text(
                      content,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
            const Spacer(),
            Text(data),
            const SizedBox(width: 5),
            if (content != "Keluar") ...[
              const Icon(Icons.keyboard_arrow_right_rounded)
            ]
          ]),
        ),
      ),
    );
  }
}
