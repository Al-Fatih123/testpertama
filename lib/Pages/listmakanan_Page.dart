import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Controller/listmakanan_Controller.dart';
import 'package:testpertama/routes.dart';
import 'package:testpertama/Components/custom_text.dart';


class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final ListmakananController Controller = Get.put(ListmakananController());

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "List Makanan"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: Controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = Controller.listMakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),

                child: InkWell(
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
                  child: Card(
                    elevation: 10,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(makanan.namaMakanan),
                        subtitle: Text(makanan.hargaMakanan),
                        leading: Image.network(makanan.imageUrl),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ), 
              );
            }
          ),
        ),
      )
    );
  }
}