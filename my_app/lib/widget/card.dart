import 'package:flutter/material.dart';
import 'package:my_app/model/creator.dart';
import 'package:my_app/ui/detail_page.dart';

class CardRecommended extends StatelessWidget {
  const CardRecommended({super.key, required this.data});

  final Creator data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, right: 15),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Hero(
              tag: data.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  data.photo,
                  fit: BoxFit.fill,
                  height: 75,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.title,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text(data.job,
                        style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(height: 10),
                    Text(
                      data.description,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          height: 25,
                          width: 90,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffEF6A37),
                            ),
                            child: Center(
                              child: Text("Available",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ),
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          height: 25,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, DetailPage.routeName,
                                    arguments: data);
                              },
                              child: const Text("Detail")),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
