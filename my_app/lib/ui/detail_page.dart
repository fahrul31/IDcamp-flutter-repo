import 'package:flutter/material.dart';
import 'package:my_app/model/creator.dart';
import 'package:my_app/widget/button.dart';
import 'package:my_app/widget/category_label.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';
  const DetailPage({super.key, required this.data});

  final Creator data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Button(text: "Join Call"),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Detail Jadwal",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: const [
          Icon(Icons.share, color: Colors.black),
          SizedBox(width: 12)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: data.id,
                  child: Image.network(
                    data.photo,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: ListView.separated(
                              itemCount: data.category.length,
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  CategoryLabel(category: data.category[index]),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        data.title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(Icons.timer_rounded),
                          const SizedBox(width: 5),
                          Text(
                            data.time,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.account_circle),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Pembicara"),
                              Text(
                                "${data.name}, ${data.job}",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Deskripsi",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
