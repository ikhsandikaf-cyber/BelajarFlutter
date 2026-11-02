import 'package:get/get.dart';

class DetailMakananController extends GetxController {
  late String namamakanan;
  late dynamic rating;
  late dynamic harga;
  late String ulasan;
  late String deskripsi;
  late String gambar;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;

    namamakanan = arguments["namamakanan"];
    rating = arguments["rating"];
    harga = arguments["harga"];
    ulasan = arguments["ulasan"];
    deskripsi = arguments["deskripsi"];
    gambar = arguments["gambar"];
  }
}