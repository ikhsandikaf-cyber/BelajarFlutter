import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama_lengkap;
  late String email;
  late String jenis_kelamin;
  late String alamat;
  late String nowa;

  @override
  void onInit() {
   
    super.onInit();
    final arguments = Get.arguments;
   
    nama_lengkap = arguments["nama_lengkap"];
    email = arguments["email"];
    jenis_kelamin = arguments["jenis_kelamin"];
    alamat = arguments["alamat"];
    nowa = arguments["nowa"];
  }
}