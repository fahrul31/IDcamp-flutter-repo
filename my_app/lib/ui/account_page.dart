import 'package:flutter/material.dart';
import 'package:my_app/widget/box.dart';
import 'package:my_app/widget/card_profile.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Akun",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.account_circle),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "Hello, LightClone",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Row(
                children: [
                  Expanded(
                      child: CardProfile(
                          icon: Icon(Icons.favorite), text: "Disukai")),
                  SizedBox(width: 12),
                  Expanded(
                      child: CardProfile(
                          icon: Icon(Icons.schedule), text: "Jadwal Sesi")),
                ],
              ),
              const SizedBox(height: 12),
              const Row(children: [
                Expanded(
                    child: CardProfile(
                        icon: Icon(Icons.payment), text: "Pembayaran"))
              ]),
              const SizedBox(height: 12),
              const Text("Akun"),
              const SizedBox(height: 12),
              const BoxProfile(
                content: "Nama",
                data: "LightClone",
              ),
              const SizedBox(height: 12),
              const BoxProfile(
                content: "Nomor HP",
                data: "08132321252",
              ),
              const SizedBox(height: 12),
              const BoxProfile(
                content: "Email",
                data: "LightClone@gmail.com",
              ),
              const SizedBox(height: 12),
              const BoxProfile(
                content: "Ganti Password",
              ),
              const SizedBox(height: 12),
              const BoxProfile(content: "Keluar"),
            ],
          ),
        ),
      )),
    );
  }
}
