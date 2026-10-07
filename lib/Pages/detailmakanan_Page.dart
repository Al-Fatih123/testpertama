import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testpertama/Controller/detailmakanan_Controller.dart';

class DetailmakananPage extends StatelessWidget {
  const DetailmakananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailmakananController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Makanan'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.network(
              controller.imageUrl,
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            child: Card(
              elevation: 5,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(controller.namaMakanan, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, )),
                  ],
                ),
                subtitle: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(controller.deskripsiMakanan, style: TextStyle(fontSize: 16)),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text("Harga: ${controller.hargaMakanan}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}