# klikmart_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Tugas 7 (Elemen Dasar Flutter)

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless widget dan stateful widget adalah dua jenis widget yang digunakan dalam pengembangan aplikasi Flutter. Keduanya memiliki karakteristik dan kegunaan yang berbeda, tergantung pada kebutuhan interaktivitas dan dinamika tampilan aplikasi.

- Stateless Widget
Stateless widget adalah widget yang tidak memiliki state (keadaan) yang dapat diubah setelah widget tersebut dibangun. Ini berarti bahwa setiap kali widget ini ditampilkan, tampilannya akan tetap sama, tanpa memperhatikan interaksi pengguna atau perubahan data.

Karakteristik:
- Imutabilitas: Setelah dibangun, stateless widget tidak dapat diubah. Semua konfigurasi sudah ditentukan saat pembuatan.
- Kinerja: Karena tidak memerlukan pengelolaan state, stateless widget biasanya lebih efisien dalam penggunaan sumber daya.
- Contoh Penggunaan: Widget seperti Text, Icon, dan RaisedButton adalah contoh stateless widget. Mereka digunakan ketika tampilan hanya bergantung pada data yang diberikan saat inisialisasi.

Stateful Widget
Stateful widget adalah widget yang dapat mengubah state-nya selama siklus hidupnya. Ini memungkinkan widget untuk merespons interaksi pengguna dan memperbarui tampilannya sesuai dengan perubahan data.

Karakteristik:
- Mutabilitas: Stateful widget dapat berubah berdasarkan input pengguna atau perubahan data lain selama aplikasi berjalan.
- Kompleksitas: Memerlukan pengelolaan state yang lebih rumit, termasuk pemanggilan metode setState() untuk memperbarui tampilan.
- Contoh Penggunaan: Widget seperti Checkbox, RadioButton, Slider, dan TextField adalah contoh stateful widget. Mereka digunakan ketika tampilan perlu diperbarui berdasarkan interaksi pengguna.

Dengan memahami perbedaan ini, pengembang dapat memilih jenis widget yang tepat sesuai dengan kebutuhan aplikasi mereka, baik itu untuk tampilan statis atau interaktif.



2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- Scaffold berfungsi untuk struktur dasar untuk membangun halaman utama aplikasi ini.
- Appbar berfungsi untuk menampilkan judul aplikasi "Plantshop" di atas halaman.
- Padding berfungsi untuk memberikan jarak di sekitar elemen-elemen ui seperti tombol dan kartu informasi agar tampilanya menjadi lebih rapih.
- Column berfungsi untuk menyusun tombol, text sambutan, dan InfoCard secara vertikal di halaman utama.
- Row berfungsi menyusun widget secara horizontal. Row berfungsi untuk menyusun NPM, nama, dan kelas agar tersusun satu baris.
- ElevatedButton.icon berfugsi untuk menampilkan ikon dan teks secara bersamaan.
- Icon berfungsi untuk menampilkan ikon grafis di layar.
- Snackbar berfungsi untuk menampilkan pesan sementara di bawah layar.
- Card berfungsi untuk menampilkan tampilan berbentuk kotak dengan bayangan yang digunakan untuk menampilkan informasi di dalamnya.
- Inkwell berfungsi untuk mendeteksi interaksi pengguuna, seperti ketukan dan menapilkan efek ripple pada klik.
- GridView.count berfungsi untuk menampilkan widget dalam bentuk grid dengan jumlah tertentu.
- Center berfungsi untuk menampilkan widget di tengah layar baik secara horizontal maupun vertikal.
- text berfungsi untuk menampilkan text di layar.



3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi setState() dalam Flutter adalah metode yang digunakan dalam kelas StatefulWidget untuk memberitahu framework bahwa ada perubahan pada state widget yang memerlukan pembaruan tampilan. Ketika setState() dipanggil, Flutter akan memanggil kembali metode build() untuk membangun ulang antarmuka pengguna dengan nilai-nilai yang telah diperbarui.

Fungsi dan Penggunaan setState()
- Memperbarui State: setState() digunakan untuk mengubah nilai variabel yang menyimpan state widget. Misalnya, jika Anda memiliki variabel yang menghitung jumlah klik tombol, Anda dapat menambahkannya di dalam fungsi setState().
- Redraw Widget: Setelah state diperbarui, Flutter akan secara otomatis menggambar ulang widget tersebut. Ini memastikan bahwa UI mencerminkan perubahan yang terjadi pada data.

Variabel yang Terdampak oleh setState()
Ketika setState() dipanggil, semua variabel yang digunakan dalam metode build() dan dideklarasikan dalam kelas state akan terpengaruh. Ini termasuk:
- Variabel State: Variabel yang menyimpan data yang dapat berubah, seperti angka, string, atau objek lainnya.
- Variabel UI: Variabel yang mengontrol tampilan widget, seperti warna, ukuran, dan posisi. Jika variabel ini diubah dalam setState(), maka tampilan widget akan diperbarui sesuai dengan nilai baru.
- Variabel Lainnya: Variabel lokal atau parameter yang digunakan dalam fungsi-fungsi lain di dalam kelas state juga dapat terpengaruh jika mereka berinteraksi dengan state.

Dengan menggunakan setState(), pengembang dapat membuat aplikasi Flutter menjadi interaktif dan responsif terhadap input pengguna, sehingga meningkatkan pengalaman pengguna secara keseluruhan.



4. Jelaskan perbedaan antara const dengan final.

Dalam Dart, const dan final adalah dua kata kunci yang digunakan untuk mendeklarasikan variabel yang tidak dapat diubah. Namun, keduanya memiliki perbedaan penting dalam cara dan waktu nilai mereka ditentukan.

Perbedaan antara const dan final

Waktu Penetapan Nilai
- final: Variabel yang dideklarasikan dengan final hanya dapat diinisialisasi satu kali. Nilainya dapat ditentukan pada saat runtime, artinya Anda bisa menggunakan hasil dari fungsi atau ekspresi yang dievaluasi saat program berjalan.
- const: Variabel yang dideklarasikan dengan const harus memiliki nilai yang diketahui pada waktu kompilasi. Ini berarti bahwa semua nilai yang diberikan kepada variabel const harus dapat dihitung sebelum program dijalankan.

Tipe Immutabilitas
- final: Variabel final bersifat immutable setelah diinisialisasi, tetapi objek yang dirujuk oleh variabel tersebut masih dapat memiliki keadaan internal yang berubah jika objek tersebut bukan merupakan objek const.
- const: Variabel const, di sisi lain, tidak hanya membuat referensi variabel tidak dapat diubah, tetapi juga menjamin bahwa objek tersebut sepenuhnya immutable. Semua field dalam objek const juga bersifat immutable.

Penggunaan dalam Kode
- final: Cocok untuk nilai yang mungkin bergantung pada input pengguna atau hasil dari proses yang berjalan.
- const: Ideal untuk nilai tetap seperti konstanta matematika atau string literal.

Konstruktor
- final: Dapat digunakan dalam konstruktor biasa.
- const: Hanya dapat digunakan dengan konstruktor const, dan semua field dalam kelas tersebut harus dideklarasikan sebagai final.

Dengan memahami perbedaan antara const dan final, Anda dapat menulis kode Dart yang lebih efisien dan terstruktur dengan baik sesuai kebutuhan aplikasi Anda.



5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

- Memulai proyek ini dengan membuka terminal.
- Menggunakan perintah flutter create klikmart untuk membuat direktori proyek baru dan menggunakan flutter run untuk masuk ke dalam direktori tersebut untuk menjalankan aplikasi.
- Mengaktifkan konfigurasi web dengan flutter config --enable-web dan menjalankan aplikasi di Chrome dengan flutter run -d chrome.
- Membuat file menu.dart baru dan memindahkan MyHomePage dari main.dart ke dalamnya.
- Menghilangkan parameter title dari file dan  mengubah MyHomePage menjadi StatelessWidget karena tidak ada state yang perlu diperbaruI.
- Menambahkan widget InfoCard untuk menampilkan informasi pengguna seperti NPM, nama, dan kelas.
- Menggunakan ElevatedButton.icon untuk membuat tombol "Lihat Daftar Produk", "Tambah Produk", dan "Keluar" dengan ikon dan warna yang berbeda.
- Dengan menggunakan InkWell dan ScaffoldMessenger, setiap tombol yang dibungkus dalam ItemCard dimaksudkan untuk menampilkan Snackbar ketika ditekan.
- Dengan GridView.count, tata letak tombol ditata menjadi grid yang membuat tampilan lebih teratur dan tampak lebih profesional.
- Menggunakan const untuk variabel seperti npm, name, dan className yang hanya diinisialisasi sekali namun dapat berubah pada runtime menggunakan final.
- Terakhir, proyek diuji dengan Flutter Analysis dan Flutter Run untuk memastikan bahwa aplikasi berjalan lancar.





Tugas 8 (Flutter Navigation, Layouts, Forms, and Input Elements)

1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Penggunaan const dalam Flutter memiliki beberapa keuntungan yang signifikan, terutama dalam konteks pengelolaan memori dan performa aplikasi. Berikut adalah penjelasan mengenai kegunaan, keuntungan, serta kapan sebaiknya menggunakan const.

Kegunaan const di Flutter

- Mendefinisikan Konstanta: const digunakan untuk mendeklarasikan nilai yang tidak dapat diubah setelah ditetapkan. Ini berarti bahwa objek yang diciptakan dengan const bersifat immutable, sehingga tidak bisa dimodifikasi setelah diciptakan.
- Pengoptimalan Memori: Dengan menggunakan const, Flutter dapat mengoptimalkan penggunaan memori. Objek yang dideklarasikan sebagai const akan dibuat sekali dan dapat digunakan kembali di seluruh aplikasi. Ini mengurangi jumlah objek yang dibuat, sehingga menghemat RAM.
- Waktu Kompilasi: Nilai dari variabel yang dideklarasikan dengan const diketahui pada waktu kompilasi, bukan saat runtime. Ini memungkinkan compiler untuk melakukan optimasi lebih baik pada kode yang dihasilkan.

Keuntungan Menggunakan const

- Efisiensi Memori: Mengurangi overhead memori karena objek yang sama tidak perlu dibuat berkali-kali. Misalnya, jika Anda memiliki beberapa widget yang identik, mendeklarasikannya sebagai const akan memastikan bahwa hanya satu instansi dari widget tersebut yang ada di memori.
- Performa Lebih Baik: Karena objek const sudah ada saat kompilasi, aplikasi tidak perlu menghabiskan waktu untuk membuat objek baru saat dijalankan, sehingga meningkatkan kecepatan eksekusi.
- Keamanan Nilai: Dengan menggunakan const, Anda menjamin bahwa nilai tersebut tidak akan berubah selama siklus hidup aplikasi, mengurangi kemungkinan bug yang disebabkan oleh perubahan nilai secara tidak sengaja.

Kapan Sebaiknya Menggunakan const

- Widget Statis: Gunakan const saat mendefinisikan widget yang tidak akan berubah selama siklus hidup aplikasi, seperti teks statis atau gambar yang sama digunakan di beberapa tempat1.
- Konstanta Global: Ketika mendefinisikan nilai-nilai konstan global atau parameter tetap dalam aplikasi, seperti warna atau ukuran font tertentu.

Kapan Sebaiknya Tidak Menggunakan const

- Widget Dinamis: Jika widget Anda perlu berubah berdasarkan interaksi pengguna atau data yang dinamis (misalnya, data dari API), maka sebaiknya tidak menggunakan const. Dalam kasus ini, gunakan widget biasa tanpa const agar widget dapat diperbarui sesuai kebutuhan.
- Objek yang Memiliki State: Untuk objek yang memiliki state atau perlu diperbarui secara berkala (seperti dalam StatefulWidget), penggunaan const tidak dianjurkan karena perubahan state akan memerlukan pembuatan ulang objek.

Dengan memahami kapan dan bagaimana menggunakan const, pengembang Flutter dapat menulis kode yang lebih efisien dan responsif.



2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Penggunaan Row dan Column dalam Flutter adalah dasar dari layout yang memungkinkan pengembang untuk mengatur widget secara horizontal dan vertikal. Berikut adalah penjelasan dan perbandingan antara keduanya, serta contoh implementasi.

Perbandingan Row dan Column

Arah Penataan
- Row: Mengatur widget anak secara horizontal dari kiri ke kanan.
- Column: Mengatur widget anak secara vertikal dari atas ke bawah.

Main Axis dan Cross Axis
- Row:
Main Axis: Horizontal
Cross Axis: Vertikal
- Column:
Main Axis: Vertikal
Cross Axis: Horizontal

Properti Penataan
Keduanya memiliki properti yang sama untuk penataan, seperti:
- mainAxisAlignment: Menentukan bagaimana widget anak diatur sepanjang sumbu utama (misalnya, start, end, center, spaceBetween, spaceAround, spaceEvenly).
- crossAxisAlignment: Menentukan bagaimana widget anak diatur sepanjang sumbu silang.

Contoh 1: Menggunakan Row

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh Row')),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.green),
            Container(width: 50, height: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

Pada contoh di atas, tiga kontainer berwarna disusun secara horizontal dengan ruang yang sama di antara mereka menggunakan MainAxisAlignment.spaceEvenly.

Contoh 2: Menggunakan Column

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Contoh Column')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 50, color: Colors.green),
            Container(width: 50, height: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}

Dalam contoh ini, tiga kontainer berwarna disusun secara vertikal dengan ruang yang sama di antara mereka menggunakan MainAxisAlignment.spaceEvenly.



3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Input yang digunakan:
- TextFormField untuk "Name": Mengambil input nama produk dengan validator agar tidak kosong.
- TextFormField untuk "Amount": Mengambil input amount dan harus berupa int.
- TextFormField untuk "description": Mengambil input description lengkap dengan validator.

Input yang tidak digunakan:
- Checkbox: Digunakan untuk pilihan antara ya atau tidak.
- RadioButton: Digunakan untuk memilih satu opsi dari beberapa pilihan.
- DropDownButton: Menyediakan daftar pilihan dalam format dropdown.
- Slider: Mengatur nilai di dalam rentang tertentu.
- Switch: Menyediakan opsi hidup/mati untuk suatu pengaturan.
- DatePicker dan TimePicker: Memungkinkan pengguna memilih tanggal atau waktu tertentu.



4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk menjaga konsistensi tema dalam aplikasi Flutter, ThemeData dapat diterapkan dalam MaterialApp. ThemeData memungkinkan pengaturan warna, font, ukuran teks, serta elemen UI lainnya sehingga tampilan aplikasi menjadi lebih seragam.

Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Ya, Untuk memastikan bahwa gaya warna dan elemen UI konsisten di seluruh tampilan, primaryColor dan skema warna ditetapkan di ThemeData.



5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Menangani navigasi dalam aplikasi Flutter yang memiliki banyak halaman (routes) dapat dilakukan dengan menggunakan kelas Navigator. Kelas ini memungkinkan pengembang untuk mengelola transisi antar halaman dengan cara yang terstruktur dan efisien. Berikut adalah cara umum untuk menangani navigasi di Flutter, termasuk contoh implementasi.

Dasar-Dasar Navigasi di Flutter

Routes
Dalam Flutter, setiap halaman disebut sebagai route. Anda dapat membuat route baru dengan mendefinisikan widget yang akan ditampilkan saat navigasi dilakukan.

Navigator
Kelas Navigator bertanggung jawab untuk mengelola stack dari routes. Metode utama yang digunakan untuk navigasi adalah:
- Navigator.push(): Menambahkan route baru ke stack.
- Navigator.pop(): Menghapus route teratas dari stack, kembali ke route sebelumnya.