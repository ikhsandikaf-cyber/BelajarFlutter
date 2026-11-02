import 'package:my_app/components/custom_button.dart';
import 'package:my_app/components/custom_textfield.dart';
import 'confirmregistration_page.dart';
import 'package:my_app/components/custom_button.dart';
import 'package:my_app/controllers/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();


  bool cekInput() {
    if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
      Get.snackbar(
        "Warning",
        "Angka 1 dan Angka 2 harus diisi",
      );
      return false;
    }

    return true;
  }


  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: AppBar(title: Text("my kalkulator")),
      body: Column(
        children: [
          CustomTextField(myHint: "input angka 1", txtController: txtangka1),
          CustomTextField(myHint: "input angka 2", txtController: txtangka2),
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                backgroundColor: Colors.blue,
                borderRadius: 20,
                onPressed: () {
                  controller.tambah(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("tambah"),
              ),
              
              CustomButton(
                backgroundColor: const Color.fromARGB(255, 23, 116, 6),
                borderRadius: 20,
                onPressed: () {
                     if (!cekInput()) return;
                  controller.kurang(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("kurang"),
              ),
              
              CustomButton(
                backgroundColor: const Color.fromARGB(255, 52, 6, 73),
                borderRadius: 20,
                
                onPressed: () {
                     if (!cekInput()) return;
                  controller.kali(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("kali"),
              ),
              
              CustomButton(
                backgroundColor: const Color.fromARGB(255, 26, 30, 25),
                borderRadius: 20,
                onPressed: () {
                     if (!cekInput()) return;
                  controller.bagi(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                },
                child: Text("bagi"),
              ),
            ], 
          ), 

          const SizedBox(height: 20), 

          Obx(
            () => Text(
              "hasil " + controller.hasilHitung.value.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        ], 
      ), 
    );
  } 
} 