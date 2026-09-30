import 'package:flutter/material.dart';
import 'package:testpertama/Components/custom_textfield.dart';
import 'package:testpertama/Components/custom_dropdwon.dart';
import 'package:testpertama/Components/custom_button.dart';
import 'package:testpertama/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtKelas = TextEditingController();
    final List<String> list = ['PPLG', 'Animasi', 'DKV'];
    final dropdownValue = Rxn<String>();

    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          CustomTextfield(controller: txtNama, myHint: "input name",obscureText: false,),
          CustomTextfield(controller: txtAlamat, myHint: "input Alamat",obscureText: false,),
          CustomTextfield(controller: txtEmail, myHint: "input Email",obscureText: false,),
          CustomTextfield(controller: txtKelas, myHint: "input Kelas",obscureText: false,),
          Obx(() => CustomDropdown(
            dropdownValue: dropdownValue.value,
            list: list,
            onChanged: (String? value) {
              dropdownValue.value = value;
            },
          )),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomButton(onPressed: () {
              Get.toNamed(
                Routes.confirm,
                arguments: {
                  'Name': txtNama.text.toString(),
                  'Alamat': txtAlamat.text.toString(),
                  'Email': txtEmail.text.toString(),
                  'Kelas': txtKelas.text.toString(),
                  'Jurusan': dropdownValue.value ?? 'Belum memilih',
                  // dari widget kalian,
                  // dll
                },
              );
            }, text: "Send"),
          )
        ],
      ),
    );
  }
}