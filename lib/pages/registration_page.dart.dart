import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/Custom_TextField.dart';
import '../components/custom_button.dart';
import 'package:my_app/routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});


  final RxString selectedJenisKelamin = 'Laki-laki'.obs;
  final List<String> listJenisKelamin = ['Laki-laki', 'Perempuan'];

  @override
  Widget build(BuildContext context) {
    TextEditingController txtnama = TextEditingController();
    TextEditingController txtemail = TextEditingController();
    TextEditingController txtalamat = TextEditingController();
    TextEditingController txtnowa = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              myHint: "Input Nama Lengkap", 
              txtController: txtnama,
            ),
            SizedBox(height: 12),
            CustomTextField(
              myHint: "Input Email",
              txtController: txtemail,
            ),
            SizedBox(height: 12),
            CustomTextField(
              myHint: "Input Alamat",
              txtController: txtalamat,
            ),
            SizedBox(height: 12),
            CustomTextField(
              myHint: "Input No WA",
              txtController: txtnowa,
            ),
            SizedBox(height: 24),

          
            Obx(
              () => DropdownButtonFormField<String>(
                value: selectedJenisKelamin.value,
                items: listJenisKelamin.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  if (newValue != null) {
                    selectedJenisKelamin.value = newValue;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Pilih Jenis Kelamin",
                ),
              ),
            ),
            SizedBox(height: 24),
           
            CustomButton(
              backgroundColor: Colors.blue,
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: 20, 
              onPressed: () {
                 Get.toNamed(
                  Routes.confirmregistration,
                  arguments: {
                    "nama_lengkap": txtnama.text,
                    "email": txtemail.text,
                    "jenis_kelamin": selectedJenisKelamin.value,
                    "alamat": txtalamat.text,
                    "nowa": txtnowa.text,
                  },
                );
              },
              child: Text("send"),
            ),
          ],
        ),
      ),
    );    
  }
}