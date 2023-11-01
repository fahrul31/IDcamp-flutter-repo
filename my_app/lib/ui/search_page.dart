import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEF6A37),
        title: const Text("Pencarian"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  style: Theme.of(context).textTheme.bodyMedium,
                  controller: _txtSearch,
                  decoration: InputDecoration(
                    hintText: "Search Place",
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    suffixIcon: const Icon(Icons.filter_list),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(16),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
