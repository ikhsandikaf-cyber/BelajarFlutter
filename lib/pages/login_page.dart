import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/components/custom_textfield.dart';
import 'package:my_app/components/custom_button.dart';
import 'package:my_app/controllers/login_controller.dart'; 

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Selamat Datang di Aplikasi",
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 46, 9, 182),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                myHint: "masukkan username",
                txtController: controller.txtUsername,
              ),
            ),

            
            Container(
              margin: const EdgeInsets.all(10),
              child: CustomTextField(
                myHint: "masukkan password",
                txtController: controller.txtPassword,
              ),
            ),
            const SizedBox(height: 20),

           
            Obx(() => controller.isloading.value
                ? const CircularProgressIndicator()
                : CustomButton(
                    child: const Text("Login"),
                    backgroundColor: const Color.fromARGB(255, 12, 12, 12),
                    foregroundColor: Colors.white,
                    onPressed: () {
                      controller.login();
                    },
                  )),
          ],
        ),
      ),
    );
  }
}