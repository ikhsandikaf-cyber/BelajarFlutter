import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isloading = false.obs;

  Future<void> login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString() .isEmpty){
      Get.snackbar("error", "username dan password harus terisi");
    }else{

      try {

         isloading.value = true; //sebagai tanda di pagenya muncul loading widget
         final url = Uri.parse("https://mediadwi.com/api/latihan/login");

         final Response = await http.post(url, body: {
          "username" : txtUsername.text.toString(),
          "password" : txtPassword.text.toString()
         });

         isloading.value = false;
         if(Response.statusCode == 200){
          //kita ambil json message pindah tampilan ke mainmenu
          final data = jsonDecode(Response.body);
          if(data['status'] == true){
            Get.snackbar("berhasil", data['message']);
          } else{
            Get.snackbar("gagal", data['message']);
          }

         }else{
          Get.snackbar("gagal", "cek internet conection");
         }
         

      } catch (e) {
        Get.snackbar("gagal", e.toString());

      }

    }
  }
}