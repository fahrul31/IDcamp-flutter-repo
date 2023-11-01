import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/api/json_service.dart';
import 'package:my_app/model/creator.dart';
import 'package:my_app/model/review.dart';
import 'package:my_app/ui/search_page.dart';
import 'package:my_app/widget/card.dart';
import 'package:my_app/widget/card_popular.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class Menu {
  String image;
  String text;
  Menu({required this.image, required this.text});
}

class _MainPageState extends State<MainPage> {
  final _txtSearch = TextEditingController();
  @override
  void dispose() {
    _txtSearch.dispose();
    super.dispose();
  }

  List<Menu> menuIcon = [
    Menu(image: 'assets/images/doctor.png', text: "Doctor"),
    Menu(image: 'assets/images/copy-writing.png', text: "Creator"),
    Menu(image: 'assets/images/briefcase.png', text: "Business"),
    Menu(image: 'assets/images/application.png', text: "Others"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0],
                colors: [Color(0xffEF6A37), Colors.white],
              ),
            ),
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
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Good Morning",
                              style: Theme.of(context).textTheme.titleMedium),
                          Text("Hello LightClone",
                              style: Theme.of(context).textTheme.bodyLarge)
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12)),
                    child: TextField(
                      readOnly: true,
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const SearchPage()));
                      },
                      style: Theme.of(context).textTheme.bodyMedium,
                      controller: _txtSearch,
                      decoration: InputDecoration(
                        hintText: "Search Place",
                        hintStyle: Theme.of(context).textTheme.bodyMedium,
                        suffixIcon: const Icon(Icons.search),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 140, 136, 136)),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: GridView.count(
                        crossAxisCount: 4,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ...menuIcon.map(
                            (icon) => Column(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 209, 209, 209),
                                            Colors.white,
                                          ]),
                                      border: Border.all(
                                          color: const Color(0xffEF6A37),
                                          width: 2.0),
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Image.asset(icon.image,
                                        color: const Color(0xffEF6A37),
                                        height: 25,
                                        width: 25),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(icon.text,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text("Popular",
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 12),
                  FutureBuilder(
                      future: loadDataReviews(),
                      builder: (BuildContext context,
                          AsyncSnapshot<dynamic> snapshot) {
                        if (snapshot.hasData) {
                          ReviewsResults reviewsResults = snapshot.data;
                          return SizedBox(
                            height: 190,
                            child: ListView.separated(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                Review review = reviewsResults.reviews[index];
                                return CardPopular(review: review);
                              },
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 15),
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return const Center(
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Recommended",
                          style: Theme.of(context).textTheme.titleLarge),
                      const Icon(
                        Icons.keyboard_arrow_right_outlined,
                        size: 36,
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  FutureBuilder(
                      future: loadData(),
                      builder: (BuildContext context,
                          AsyncSnapshot<dynamic> snapshot) {
                        if (snapshot.hasData) {
                          CreatorsResults creatorList = snapshot.data;
                          return ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                Creator creator = creatorList.creators[index];
                                return CardRecommended(data: creator);
                              });
                        }
                        return const Center(
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(),
                          ),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox banner() {
    return SizedBox(
      width: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          "https://res.cloudinary.com/jobizil/image/upload/v1602768183/images/menus/xnurgo60mme1ewupfbin.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
