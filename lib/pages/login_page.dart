import 'package:flutter/material.dart';
import 'package:my_app/components/custom_textfield.dart';
import 'package:my_app/components/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login page"),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to application " + statusLogin,
            style: const TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 46, 9, 182),
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
            ),
          ),

          Container(
            margin: const EdgeInsets.all(10),
            child: CustomButton(
              labelButton: "Login",
              backgroundColor: const Color.fromARGB(255, 12, 12, 12),
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  String username = txtUsername.text.toString();
                  String password = txtPassword.text.toString();

                  if (username == "admin" && password == "admin") {
                    statusLogin = "admin";
                    print("sukses login");
                  } else {
                    statusLogin = "failed";
                    print("gagal login");
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}