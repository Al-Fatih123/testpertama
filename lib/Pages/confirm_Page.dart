import 'package:flutter/material.dart';
import 'package:testpertama/Controller/confirm_Controller.dart';
import 'package:testpertama/Components/custom_text.dart';
import 'package:testpertama/Components/custom_button.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  ConfirmRegPage({super.key});

  final controller = Get.put(ConfirmRegController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          CustomText(text: "Nama ${controller.nama}"),
          CustomText(text: "Alamat ${controller.alamat}"),
          CustomText(text: "Email ${controller.email}"),
          CustomText(text: "Kelas ${controller.kelas}"),
          CustomText(text: "Jurursan ${controller.jurusan}"),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomButton(onPressed: () {
                Get.back();
            }, text: "Oke"),
          )
        ],
      ),
    );
  }
}