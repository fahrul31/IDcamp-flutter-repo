import 'package:flutter/material.dart';
import 'package:my_app/model/review.dart';

class CardPopular extends StatelessWidget {
  const CardPopular({super.key, required this.review});

  final Review review;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 194, 194, 194),
                    child: Icon(Icons.account_circle),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        review.name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        review.job,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(review.review,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 3,
                  textAlign: TextAlign.justify),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(Icons.star_border_outlined),
                  const Icon(Icons.star_border_outlined),
                  const Icon(Icons.star_border_outlined),
                  const Icon(Icons.star_border_outlined),
                  const Icon(Icons.star_border_outlined),
                  const SizedBox(width: 10),
                  const Spacer(),
                  SizedBox(
                    height: 25,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Details")),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
