import 'package:flutter/material.dart';
import 'package:my_app/ui/home_page.dart';
import 'package:my_app/widget/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var txtEditEmail = TextEditingController();
  var txtEditPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    txtEditEmail.dispose();
    txtEditPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, HomePage.routeName);
              }
            },
            child: const Button(text: "Masuk"),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Text(
                  "Masuk Akun",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
                const SizedBox(height: 8),
                const Text(
                  "Masukkan nomor handphone atau email & password kamu untuk masuk ke aplikasi",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                const Text("Nomor HP atau email"),
                TextFormField(
                  controller: txtEditEmail,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Masukkan email",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Color(0xffEF6A37),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEF6A37))),
                      contentPadding: EdgeInsets.symmetric(vertical: 16)),
                ),
                const SizedBox(height: 24),
                const Text("Password"),
                TextFormField(
                  obscureText: true,
                  controller: txtEditPass,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Masukkan password",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Color(0xffEF6A37),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEF6A37))),
                      contentPadding: EdgeInsets.symmetric(vertical: 16)),
                ),
                const SizedBox(height: 24),
                const Row(
                  children: [
                    Spacer(),
                    Text("Lupa password?"),
                  ],
                ),
                const SizedBox(height: 24),
                const Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    height: 6,
                  )),
                  Text("atau lanjutkan dengan"),
                  Expanded(
                      child: Divider(
                    color: Colors.black,
                    height: 6,
                  )),
                ]),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 44,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 210, 208, 208)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/facebook-logo.png',
                                height: 20),
                            const SizedBox(width: 10),
                            const Text(
                              "Facebook",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 44,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 210, 208, 208)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png', height: 20),
                            const SizedBox(width: 10),
                            const Text(
                              "Google",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
