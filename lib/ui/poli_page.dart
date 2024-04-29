import 'package:flutter/material.dart'; 
//Baris ini mengimpor pustaka flutter/material.dart yang diperlukan untuk mengembangakan aplikasi Flutter dengan menggunakan Material Design.

 class PoliPage extends StatefulWidget { 
//Mendefinisikan kelas PoliPage yang merupakan turunan dari StatefulWidget. Ini berarti PoliPage adalah widget yang memiliki keadaan (state) yang dapat berubah.
  const PoliPage({super.key}); 
//Konstruktor untuk kelas PoliPage adalah konstruktor dengan parameter opsional yang menggunakan  sintaks const untuk mengoptimalkan performa. Namun, dalam kode yang diberikan  ada kesalahan penulisan. Parameter yang benar adalah Key key bukan super,key.

  @override //Anotasi yang menandakan bahwa metode berikutnya akan menggantikan metode dari superclass atau interface
  State<PoliPage> createState() => _PoliPageState(); 
//Metode ini menggantikan metode createState() dari StatefulWidget.Ini membuat dan mengembalikan instance dari_PoliPageState,yang merupakan kelas turunan dari State<PoliPage>.Kelas ini akan mengatur keadaan (state) untuk PoliPage.
 } 

 class _PoliPageState extends State<PoliPage> { 
//Mendefinisikan kelas_PoliPageState, yang merupakan turunann dari State<PoliPage>.Kelas ini bertanggungjawab untuk mengatur keadaan (state) dari PoliPage.
   @override 
   Widget build(BuildContext context) { 
//Metode ini menggantikan metode build() dari State. Ini akan membangun dan mengembalikan widget yang akan ditampilkan di layar.
     return Scaffold( //Membuat  sebuah widget Scaffold, yang menyediakan kerangka utama untuk tata letak halaman.
       appBar: AppBar(title: const Text("Data Poli")),
//Menetapkan widget AppBar ke propeti appBar di Scaffold. AppBar menampilkan bilah aplikasi dibagian  atas layar dan judulnya adalah "Data Poli"
       body: ListView( //Menetapkan  widget  ListView ke properti body di Scaffold. LisView adalah  widget yang digunakan untuk menampilkan daftar widget dalam bentuk daftar bergulir.
         children: const [ 
           Card( 
             child: ListTile( 
               title: const Text("Poli Anak"), 
             ), 
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
               title: const Text("Poli THT"), 
           ), 
         ) 
        ], 
      ), 
//23-45 Ini adalah daftar widget yang ditampilkan dalam ListView. Setiap  widget Card berisi  widget ListTile yang menampilkan teks judul untuk poliklinik tertentu.
    ); //Menutup Scaffold.
  } 
} //Menutup kelas_PoliPageState.