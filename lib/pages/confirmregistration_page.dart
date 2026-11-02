import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/custom_button.dart';
import 'package:my_app/controllers/confirmregistration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Page")),
      backgroundColor: const Color.fromARGB(255, 128, 128, 126), 
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min, 
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(
                    "Nama Lengkap: ${controller.nama_lengkap}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Email: ${controller.email}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Gender: ${controller.jenis_kelamin}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Alamat: ${controller.alamat}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Nomer WA: ${controller.nowa}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 30), 
             
                  Center(
                    child: CustomButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: 20, 
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("ok"),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}