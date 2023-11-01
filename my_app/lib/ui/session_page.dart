import 'package:flutter/material.dart';
import 'package:my_app/widget/card_session.dart';

class SessionPage extends StatefulWidget {
  static const routeName = '/session_page';
  const SessionPage({super.key});

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Jadwal Sesi",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        bottom: TabBar(
          labelStyle: Theme.of(context).textTheme.titleLarge,
          controller: _tabController,
          dividerColor: Colors.transparent,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color(0xffEF6A37),
          tabs: const <Widget>[
            Tab(text: 'Akan datang'),
            Tab(text: 'Selesai'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            shrinkWrap: true,
            children: const [
              CardSession(
                  title: "Ngobrol Bisnis: Cara Membangun StartUp dari nol",
                  time: "Live"),
              CardSession(
                  title: "Ngobrol Bisnis: Cara Membangun StartUp dari nol",
                  time: "dalam 1 hari"),
              CardSession(
                  title: "Ngobrol Bisnis: Cara Membangun StartUp dari nol",
                  time: "dalam 2 hari"),
            ],
          ),
          ListView(
            shrinkWrap: true,
            children: const [
              CardSession(
                  title: "Ngobrol Bisnis: Cara Membangun StartUp dari nol",
                  time: "4 hari yang lalu"),
            ],
          ),
        ],
      ),
    );
  }
}
