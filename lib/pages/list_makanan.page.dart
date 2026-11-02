import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/controllers/list_makan_controller.dart';
import 'package:my_app/routes.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Makanan"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return ListTile(
              title: Text(
                makanan.namamakanan,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
               subtitle: Text("Rating: ${makanan.rating}", style: TextStyle(fontSize: 15)),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Get.toNamed(
                  Routes.detailmakanan,
                  arguments: {
                    'namamakanan': makanan.namamakanan,
                    'rating': makanan.rating,
                    'harga': makanan.harga,
                    'ulasan': makanan.ulasan,
                    'deskripsi': makanan.deskripsi,
                    'gambar': makanan.gambar,
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}