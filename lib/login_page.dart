import 'package:flutter/material.dart';
import 'components/custom_textfield.dart';
import 'components/custom_button.dart';
import 'kalkulator_page.dart'; 

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
      appBar: AppBar(title: Text("login page")),
      body: Column(
        children: [
          Text(
            "Welcome to application " + statusLogin,
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 46, 9, 182),
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input username",
              txtController: txtUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "input password",
              txtController: txtPassword,
            ),
          ),
         
          Container(
            margin: EdgeInsets.all(10),
            child: CustomButton(
              labelButton: "Login",
              onPressed: () {
                String username = txtUsername.text.toString();
                String password = txtPassword.text.toString();

                if (username == "admin" && password == "admin") {
                  print("sukses login");

                  // 👈 2. Pindahkan langsung ke KalkulatorPage saat sukses
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KalkulatorPage(),
                    ),
                  );
                } else {
                  setState(() {
                    // fungsinya untuk reload / refresh satu page full
                    statusLogin = "failed";
                    print("gagal login");
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}