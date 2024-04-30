import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
//File poli.dart dan poli_detail.dart diimpor. File-file ini kemungkinan berisi kelas model untuk departemen medis (Poli) dan halaman detail untuk departemen medis tertentu (PoliDetail).

class PoliPage extends StatefulWidget { //Konstruktor const PoliPage({Key? key}) sekarang menyertakan parameter Key. Parameter Key digunakan untuk mengidentifikasi widget secara unik dan mengoptimalkan pembangunan kembali widget.
  const PoliPage({Key? key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        children: [
          GestureDetector( //Widget GestureDetector ditambahkan di sekitar kartu "Poli Anak". Ini mendengarkan peristiwa ketuk dan memicu panggilan balik onTap yang ditentukan saat diketuk.
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () { //Callback onTap membuat instance baru dari kelas Poli dengan nama "Poli Anak" dan menetapkannya ke variabel poliAnak.

              Poli poliAnak = Poli(namaPoli: "Poli Anak"); 
              Navigator.push( //Metode Navigator.push dipanggil untuk menavigasi ke halaman PoliDetail. Ini menggunakan kelas MaterialPageRoute untuk menentukan rute dan meneruskan objek poliAnak sebagai parameter ke halaman PoliDetail.
                context,
                MaterialPageRoute(builder: (context) => PoliDetail(poli: poliAnak)), 
              );
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"), //Sisa kode tetap sama dengan versi sebelumnya, dengan departemen medis lainnya ("Poli Kandungan," "Poli Gigi," dan "Poli THT") ditampilkan sebagai kartu di widget ListView.
            ),
          ),
        ],
      ),
    );
  }