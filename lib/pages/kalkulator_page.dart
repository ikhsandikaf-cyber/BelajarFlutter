import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/components/custom_button.dart';
import 'package:my_app/components/custom_textfield.dart';
import 'package:my_app/controllers/kalkulator_controller.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

 
    void tampilkanSnackbar(String pesan, Color warna) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(pesan),
          backgroundColor: warna,
          duration: const Duration(seconds: 2),
        ),
      );
    }

    
    bool validasiInput() {
      String angka1 = txtangka1.text.trim();
      String angka2 = txtangka2.text.trim();

      if (angka1.isEmpty && angka2.isEmpty) {
        tampilkanSnackbar("Angka 1 dan Angka 2 tidak boleh kosong!", Colors.orange);
        return false;
      } else if (angka1.isEmpty) {
        tampilkanSnackbar("Angka 1 tidak boleh kosong!", Colors.orange);
        return false;
      } else if (angka2.isEmpty) {
        tampilkanSnackbar("Angka 2 tidak boleh kosong!", Colors.orange);
        return false;
      }
      return true;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("my kalkulator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(
              myHint: "input angka 1",
              txtController: txtangka1,
            ),
            const SizedBox(height: 10),
            CustomTextfield(
              myHint: "input angka 2",
              txtController: txtangka2,
            ),
            const SizedBox(height: 15),

            // Tombol Tambah
            CustomButton(
              labelButton: "tambah",
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                if (validasiInput()) {
                  controller.tambah(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                }
              },
            ),
            const SizedBox(height: 8),

            // Tombol Kurang
            CustomButton(
              labelButton: "kurang",
              backgroundColor: const Color.fromARGB(255, 23, 116, 6),
              textColor: Colors.white,
              onPressed: () {
                if (validasiInput()) {
                  controller.kurang(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                }
              },
            ),
            const SizedBox(height: 8),

            // Tombol Kali
            CustomButton(
              labelButton: "kali",
              backgroundColor: const Color.fromARGB(255, 52, 6, 73),
              textColor: Colors.white,
              onPressed: () {
                if (validasiInput()) {
                  controller.kali(
                    double.parse(txtangka1.text),
                    double.parse(txtangka2.text),
                  );
                }
              },
            ),
            const SizedBox(height: 8),

            // Tombol Bagi
            CustomButton(
              labelButton: "bagi",
              backgroundColor: const Color.fromARGB(255, 26, 30, 25),
              textColor: Colors.white,
              onPressed: () {
                if (validasiInput()) {
                  double angka2 = double.parse(txtangka2.text);
                  if (angka2 == 0) {
                    tampilkanSnackbar("Angka 2 tidak boleh 0 pada pembagian!", Colors.red);
                  } else {
                    controller.bagi(
                      double.parse(txtangka1.text),
                      angka2,
                    );
                  }
                }
              },
            ),
            const SizedBox(height: 20),

            Obx(
              () => Text(
                "hasil " + controller.hasilHitung.value.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}