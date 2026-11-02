import 'package:get/get.dart';
import 'package:my_app/pages/confirmregistration_page.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/main_menu.dart';
import 'package:my_app/pages/registration_page.dart.dart';
import 'pages/confirmregistration_page.dart';
import 'pages/registration_page.dart.dart'; 
import 'pages/detail_makanan.page.dart';
import 'pages/list_makanan.page.dart';

class Routes {

  static const String registration = "/RegistrationPage";
  static const String confirmregistration = "/confirmregistration";
  static const String listmakanan = "/listmakanan";
  static const String detailmakanan = "/detailmakanan";
  static const String mainmenu = "/mainmenu";
  static const String loginpage = "/loginpage";


  static final myPages = [
    GetPage(name: Routes.registration, page: () =>   RegistrationPage()),
    GetPage(name: Routes.confirmregistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: Routes.listmakanan, page: () =>  ListMakananPage()),
    GetPage(name: Routes.detailmakanan, page: () =>  DetailMakananPage()),
    GetPage(name: Routes.mainmenu, page: () => MainMenu()),
    GetPage(name: Routes.loginpage, page: () => LoginPage())

  ];

}