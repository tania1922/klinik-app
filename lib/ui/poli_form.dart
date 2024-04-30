import 'package:flutter/material.dart'; //paket flutter/material.dart yang diperlukan diimpor.

class PoliForm extends StatefulWidget { //PoliForm adalah kelas yang memperluas StatefulWidget, menunjukkan bahwa ia mewakili widget yang dapat mengubah statusnya.
  const PoliForm({Key? key}) : super(key: key); //Konstruktor const PoliForm ({Key? key}) didefinisikan. Dibutuhkan kunci parameter bernama opsional dan meneruskannya ke konstruktor superclass menggunakan super(key: key).

  @override
  _PoliFormState createState() => _PoliFormState();
}

class _PoliFormState extends State<PoliForm> { //Kelas _PoliFormState adalah kelas privat yang memperluas Negara<PoliForm>. Ini mewakili keadaan yang bisa berubah untuk widget PoliForm.
  final _formKey = GlobalKey<FormState>(); //_formKey dibuat sebagai GlobalKey<FormState>. Kunci ini digunakan untuk mengidentifikasi dan mengelola status formulir secara unik.


  @override
  Widget build(BuildContext context) { //Metode build menimpa metode build kelas State dan mengembalikan UI untuk widget PoliForm.
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Poli")), //Widget Perancah digunakan sebagai wadah utama untuk formulir. Ini menyediakan kerangka kerja untuk menerapkan struktur tata letak visual desain material dasar. Widget AppBar menetapkan judul formulir sebagai "Tambah Poli".
      body: SingleChildScrollView( //Widget SingleChildScrollView digunakan untuk mengaktifkan pengguliran saat konten formulir melebihi ruang yang tersedia.
        child: Form( //Widget Formulir digunakan untuk mengelola status formulir. Dibutuhkan _formKey sebagai kunci dan membungkus bidang formulir dan tombol.
          key: _formKey,
          child: Column( //Di dalam Form, ada widget Kolom yang berisi bidang dan tombol formulir
            children: [
              TextField( //Widget TextField digunakan untuk memasukkan nama departemen medis. Ini menyediakan bidang input teks dengan label "Nama Poli".
                decoration: const InputDecoration(labelText: "Nama Poli"),
              ),
              SizedBox(height: 20), //SizedBox digunakan untuk menambahkan jarak vertikal 20 piksel antara bidang teks dan tombol.
              ElevatedButton( //Widget ElevatedButton mewakili tombol berlabel "Simpan" (Simpan). Saat ini, callback onPressed kosong, artinya tidak melakukan apa-apa saat ditekan
                onPressed: () {},
                child: const Text("Simpan"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}