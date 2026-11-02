import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/detail_makanan_controller.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final  controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Makanan"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [   
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      controller.gambar,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    controller.namamakanan,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Rating: ${controller.rating}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Harga: Rp ${controller.harga}",
                    style: const TextStyle(
                      fontSize: 16, 
                      color: Colors.green, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Ulasan: ${controller.ulasan}",
                    style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Deskripsi: ${controller.deskripsi}",
                    style: const TextStyle(fontSize: 14),
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