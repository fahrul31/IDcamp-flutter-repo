import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/styles.dart';
import 'package:my_app/model/creator.dart';
import 'package:my_app/ui/detail_page.dart';
import 'package:my_app/ui/home_page.dart';
import 'package:my_app/ui/onboard_page.dart';
import 'package:my_app/ui/session_page.dart';
import 'package:my_app/ui/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Karir App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: myTextTheme,
        iconTheme: const IconThemeData(color: Color(0xffEF6A37)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      onGenerateRoute: (settings) {
        if (settings.name == HomePage.routeName) {
          return CupertinoPageRoute(builder: (context) => const HomePage());
        }
        return null;
      },
      routes: {
        DetailPage.routeName: (context) => DetailPage(
              data: ModalRoute.of(context)?.settings.arguments as Creator,
            ),
        OnboardPage.routeName: (context) => const OnboardPage(),
        SplashPage.routeName: (context) => const SplashPage(),
        SessionPage.routeName: (context) => const SessionPage(),
      },
    );
  }
}
