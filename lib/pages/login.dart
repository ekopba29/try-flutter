import 'package:flutter/material.dart';
import 'package:simple_app/pages/profil/profil.dart';
import 'package:simple_app/pages/register.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 29,
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            TextField(
              autocorrect: false,
            ),
            SizedBox(
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
              ),
              autocorrect: false,
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfilPage(),
                  ),
                );
              },
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
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 19,
                  ),
                )),
              ),
            ),
            SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("No Account ? "),
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return RegisterPage();
                      }));
                    },
                    child: Text(
                      "Register Here",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color.fromARGB(228, 244, 217, 45)),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
