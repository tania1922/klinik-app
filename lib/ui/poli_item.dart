import 'package:flutter/material.dart'; //Paket flutter/material.dart yang diperlukan diimpor.
import '../model/poli.dart'; //File model/poli.dart dan poli_detail.dart diimpor. File-file ini kemungkinan berisi kelas model untuk departemen medis (Poli) dan halaman detail untuk departemen medis tertentu (PoliDetail).
import 'poli_detail.dart'; 
  final Poli poli;

  const PoliItem({Key? key, required this.poli}); //Kelas PoliItem didefinisikan sebagai widget stateless. Ini mewakili satu item dalam daftar departemen medis.

  @override
  Widget build(BuildContext context) {
    return GestureDetector( //Widget GestureDetector digunakan untuk mendeteksi peristiwa ketuk pada item. Ini membungkus widget Kartu yang mewakili item.
      child: Card(
        child: ListTile( //Widget Kartu menyediakan wadah visual untuk item tersebut. Ini berisi widget ListTile.
          title: Text("${poli.namaPoli}"), //Di dalam ListTile, properti title menampilkan nama departemen medis menggunakan interpolasi ("${poli.namaPoli}").
        ),
      ),
      onTap: () { //Callback onTap dipicu saat item diketuk. Ini menggunakan metode Navigator.push untuk menavigasi ke halaman PoliDetail, meneruskan objek poli sebagai parameter.
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
    );
  }
}