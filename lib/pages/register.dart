import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_app/pages/login.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  bool showPasswordConfirmation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 120,
        leading: ElevatedButton.icon(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text('Back'),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const SizedBox(
                width: 20,
                height: 40,
              ),
              Row(children: [
                Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 29,
                  ),
                ),
              ]),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const TextField(
                autocorrect: false,
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const TextField(
                autocorrect: false,
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              TextField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      showPassword = !showPassword;
                    }),
                    child: showPassword
                        ? Icon(Icons.remove_red_eye_rounded)
                        : Icon(Icons.visibility_off),
                  ),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
                autocorrect: false,
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              TextField(
                obscureText: !showPasswordConfirmation,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      showPasswordConfirmation = !showPasswordConfirmation;
                    }),
                    child: showPasswordConfirmation
                        ? Icon(Icons.remove_red_eye_rounded)
                        : Icon(Icons.visibility_off),
                  ),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    borderSide: BorderSide.none,
                  ),
                ),
                autocorrect: false,
              ),
              SizedBox(
                width: 20,
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Ink(
                  width: double.infinity,
                  height: 48,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 136, 202, 242),
                        Colors.blue,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 19,
                    ),
                  )),
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an Account ? "),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LoginPage();
                      }));
                    },
                    child: const Text(
                      "Login Here",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(228, 244, 217, 45)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
