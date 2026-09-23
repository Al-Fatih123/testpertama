import 'package:flutter/material.dart';
import 'package:testpertama/Components/custom_textfield.dart';
import 'package:testpertama/Components/custom_button.dart';
import 'package:testpertama/Controller/Kalkulator_Controller.dart';
import 'package:get/get.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());


  @override
  Widget build(BuildContext context) {
    TextEditingController angka1Controller = TextEditingController();
    TextEditingController angka2Controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(controller: angka1Controller, myHint: "input angka 1", obscureText: false),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(controller: angka2Controller, myHint: "input angka 2", obscureText: false),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(onPressed: () {
                int angka1 = int.parse(angka1Controller.text);
                int angka2 = int.parse(angka2Controller.text);
                controller.tambah(angka1, angka2);
              }, text: "Tambah"),
              CustomButton(onPressed: () {
                int angka1 = int.parse(angka1Controller.text);
                int angka2 = int.parse(angka2Controller.text);
                controller.kurang(angka1, angka2);
              }, text: "Kurang"),
              CustomButton(onPressed: () {
                int angka1 = int.parse(angka1Controller.text);
                int angka2 = int.parse(angka2Controller.text);
                controller.kali(angka1, angka2);
              }, text: "Kali"),
              CustomButton(onPressed: () {
                int angka1 = int.parse(angka1Controller.text);
                int angka2 = int.parse(angka2Controller.text);
                controller.bagi(angka1, angka2);
              }, text: "Bagi"),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomButton(text: "RESET", onPressed: () {
              angka1Controller.clear();
              angka2Controller.clear();
              controller.hasil.value = 0;
            })
          ),
          Obx(() => Text(
            controller.hasil.toString(),
            style: TextStyle(fontSize: 30),
          )),
        ],
      ),
    );
  }
}