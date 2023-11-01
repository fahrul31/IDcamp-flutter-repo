import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:my_app/ui/home_page.dart';
import 'package:my_app/ui/login_page.dart';
import 'package:my_app/widget/button.dart';

class OnboardPage extends StatelessWidget {
  static const routeName = '/onboard_page';
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(
                    "assets/images/onboard.png",
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Selamat Datang di Aplikasi!",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              const Text(
                "Selamat datang!",
                style: TextStyle(color: Colors.grey),
              ),
              const Spacer(),
              Flexible(
                flex: 2,
                child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const LoginPage())),
                    child: const Button(text: "Masuk")),
              ),
              const SizedBox(height: 12),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(
                            width: 2, color: const Color(0xffEF6A37))),
                    child: const Center(
                      child: Text("Daftar akun baru",
                          style: TextStyle(color: Color(0xffEF6A37))),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Dengan masuk atau mendaftar, kamu menyetujui',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: ' Persyaratan Layanan',
                      style: TextStyle(color: Color(0xffEF6A37)),
                    ),
                    TextSpan(text: ' & '),
                    TextSpan(
                      text: 'Kebijakan Privasi ',
                      style: TextStyle(color: Color(0xffEF6A37)),
                    ),
                    TextSpan(text: 'kami'),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
