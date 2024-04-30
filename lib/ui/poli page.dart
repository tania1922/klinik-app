import 'package:flutter/material.dart'; //mengimpor paket flutter/material.dart yang diperlukan, yang menyediakan kerangka kerja Flutter untuk membangun UI.
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';
import 'poli_form.dart';

class PoliPage extends StatefulWidget { //PoliPage adalah kelas yang memperluas StatefulWidget, yang berarti mewakili widget yang dapat mengubah statusnya.
  const PoliPage({Key? key}); //konstruktor untuk kelas PoliPage dibutuhkan kunci parameter bernama opsional dan memanggil konstruktor superclass (StatefulWidget) menggunakan super.key.

  @override
  State<PoliPage> createState() => _PoliPageState(); //Metode createState diganti untuk membuat instance _PoliPage
}

class _PoliPageState extends State<PoliPage> { //kelas privat yang memperluas Negara<PoliPage>. Ini mewakili keadaan yang bisa berubah untuk widget PoliPage.
  @override
  Widget build(BuildContext context) { //Metode build ditimpa untuk membangun UI untuk widget PoliPage.

    return Scaffold( //Widget Perancah digunakan sebagai wadah utama untuk halaman. Ini menyediakan kerangka kerja untuk menerapkan struktur tata letak visual desain material dasar.

      appBar: AppBar( //Widget AppBar ditempatkan di bagian atas Perancah dan menampilkan judul dengan teks "Data Poli".
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          ),
        ],
      ), //Setiap Kartu berisi widget ListTile dengan judul yang mewakili departemen medis tertentu.
      body: ListView( //Properti tubuh Perancah memegang
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}