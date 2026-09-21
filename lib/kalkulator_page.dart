import 'package:flutter/material.dart';
import 'components/custom_button.dart';     
import 'components/custom_textfield.dart'; 

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {

  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();

  String hasil = "0";

  
  void hitung(String operator) {
    double? angka1 = double.tryParse(angka1Controller.text);
    double? angka2 = double.tryParse(angka2Controller.text);

    if (angka1 == null || angka2 == null) {
      setState(() {
        hasil = "Input tidak valid";
      });
      return;
    }

    double hasilHitung = 0;

    if (operator == "+") {
      hasilHitung = angka1 + angka2;
    } else if (operator == "-") {
      hasilHitung = angka1 - angka2;
    } else if (operator == "*") {
      hasilHitung = angka1 * angka2;
    } else if (operator == "/") {
      if (angka2 == 0) {
        setState(() {
          hasil = "Tidak bisa dibagi 0";
        });
        return;
      }
      hasilHitung = angka1 / angka2;
    }

    setState(() {
      hasil = hasilHitung.toString();
    });
  }

  
  void reset() {
    angka1Controller.clear();
    angka2Controller.clear();
    setState(() {
      hasil = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),

            const Text(
              "Kalkulator",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 56, 177, 60),
              ),
            ),

            const SizedBox(height: 20),

            
            Row(
              children: [
                Expanded(
                  child: CustomTextfield(
                    myHint: "Input Angka 1",
                    txtController: angka1Controller,
                    keyboardType: TextInputType.number, 
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: CustomTextfield(
                    myHint: "Input Angka 2",
                    txtController: angka2Controller,
                    keyboardType: TextInputType.number, 
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  labelButton: "+",
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  onPressed: () => hitung("+"),
                ),
                const SizedBox(width: 10),
                CustomButton(
                  labelButton: "-",
                  backgroundColor: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () => hitung("-"),
                ),
                const SizedBox(width: 10),
                CustomButton(
                  labelButton: "*",
                  backgroundColor: Colors.brown,
                  textColor: Colors.white,
                  onPressed: () => hitung("*"),
                ),
                const SizedBox(width: 10),
                CustomButton(
                  labelButton: "/",
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  onPressed: () => hitung("/"),
                ),
              ],
            ),

            const SizedBox(height: 15),

            
            Text(
              "Hasil : $hasil",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            
            CustomButton(
              labelButton: "Reset",
              backgroundColor: Colors.blue,
              textColor: Colors.white,
              onPressed: reset,
            ),
          ],
        ),
      ),
    );
  }
}