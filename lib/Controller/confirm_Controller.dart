import 'package:get/get.dart';

class ConfirmRegController extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String kelas;
  late String jurusan;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    nama = arguments['Name'];
    alamat = arguments['Alamat'];
    email = arguments['Email'];
    kelas = arguments['Kelas'];
    jurusan = arguments['Jurusan'];
  }
}