import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Controller/listmakanan_Controller.dart';
import 'package:testpertama/routes.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final ListmakananController Controller = Get.put(ListmakananController());

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListMakanan"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: Controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = Controller.listMakanan[index];
            return InkWell(
              onTap: () {
                //buat ke detail makanan
                Get.toNamed(
                  Routes.detailmakanan,
                  arguments: {
                    'namaMakanan': makanan.namaMakanan,
                    'hargaMakanan': makanan.hargaMakanan,
                    'imageUrl': makanan.imageUrl,
                    'deskripsiMakanan': makanan.deskripsiMakanan,
                  },
                );
              },
              child: ListTile(
                title: Text(makanan.namaMakanan),
                subtitle: Text(makanan.hargaMakanan),
                leading: Image.network(makanan.imageUrl),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }
        ),
      ),
    );
  }
}