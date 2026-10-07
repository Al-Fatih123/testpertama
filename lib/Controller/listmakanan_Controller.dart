import 'package:get/get.dart';
import 'package:testpertama/Models/makanan_Model.dart';


class ListmakananController extends GetxController{
  
  List<makananModel> listMakanan = [
    makananModel(namaMakanan: "Soto Ayam", hargaMakanan: "10.000", imageUrl: "https://tse1.mm.bing.net/th/id/OIP.n2TBlalIYoBvXNMAlSiVGgHaFi?r=0&pid=Api&h=220&P=0", deskripsiMakanan: "Soto ayam adalah hidangan sup tradisional Indonesia yang terbuat dari kaldu ayam, daging ayam, dan berbagai bumbu rempah. Hidangan ini biasanya disajikan dengan nasi, mie, atau lontong, serta dilengkapi dengan pelengkap seperti telur rebus, tauge, dan daun bawang."),
    makananModel(namaMakanan: "Soto bebek", hargaMakanan: "19.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDL0CvkPqxfM7rG2AJ0jv5meZLYSbWSRNnObVwCYoX-A&s=10", deskripsiMakanan: "Soto bebek adalah hidangan sup tradisional Indonesia yang terbuat dari kaldu bebek, daging bebek, dan berbagai bumbu rempah. Hidangan ini biasanya disajikan dengan nasi, mie, atau lontong, serta dilengkapi dengan pelengkap seperti telur rebus, tauge, dan daun bawang."),
    makananModel(namaMakanan: "Soto kerbau", hargaMakanan: "16.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYycbmcWojQ_LKfsLnuuprJt59c8N8MQFLnUdPxPcREA&s=10", deskripsiMakanan: "Soto kerbau adalah hidangan sup tradisional Indonesia yang terbuat dari kaldu kerbau, daging kerbau, dan berbagai bumbu rempah. Hidangan ini biasanya disajikan dengan nasi, mie, atau lontong, serta dilengkapi dengan pelengkap seperti telur rebus, tauge, dan daun bawang."),
    makananModel(namaMakanan: "Soto sapi", hargaMakanan: "14.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH0u2QHu74N7TqDDlJynJI58pIiegG156NZJNR-a1org&s", deskripsiMakanan: "Soto sapi adalah hidangan sup tradisional Indonesia yang terbuat dari kaldu sapi, daging sapi, dan berbagai bumbu rempah. Hidangan ini biasanya disajikan dengan nasi, mie, atau lontong, serta dilengkapi dengan pelengkap seperti telur rebus, tauge, dan daun bawang."),
    makananModel(namaMakanan: "Soto betawi", hargaMakanan: "15.000", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRBLcqGvJXgG5YtfstTPKJc56VEcqXC7vv0OmmvbVNqg&s=10", deskripsiMakanan: "Soto betawi adalah hidangan sup tradisional Indonesia yang terbuat dari kaldu sapi, daging sapi, dan berbagai bumbu rempah. Hidangan ini biasanya disajikan dengan nasi, mie, atau lontong, serta dilengkapi dengan pelengkap seperti telur rebus, tauge, dan daun bawang."),
  ];
}