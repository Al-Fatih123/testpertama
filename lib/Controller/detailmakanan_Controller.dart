import 'package:get/get.dart';

class DetailmakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String imageUrl;
  late String deskripsiMakanan;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    hargaMakanan = arguments['hargaMakanan'];
    imageUrl = arguments['imageUrl'];
    deskripsiMakanan = arguments['deskripsiMakanan'];
  }
}