import 'package:testpertama/Pages/registration_Page.dart';
import 'package:testpertama/Pages/confirm_Page.dart';
import 'package:get/get.dart';

class Routes {
  // list variabel nama halaman
  static const String registration = "/registration";
  static const String confirm = "/confirm_registration";
  // others pages here

  // untuk kita daftarkan di main dart, isinya array page yang kita punya
  static final pages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirm, page: () => ConfirmRegPage()),
  ];
}