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





Tugas 9 (Integrasi Layanan Web Django dengan Aplikasi Flutter)

1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

Membuat model untuk pengambilan atau pengiriman data JSON sangat penting dalam pengembangan aplikasi, terutama ketika berinteraksi dengan API. Berikut adalah beberapa alasan mengapa model diperlukan dan potensi kesalahan yang dapat terjadi jika model tidak dibuat terlebih dahulu.

- Struktur Data yang Jelas
Model memberikan struktur yang jelas untuk data yang akan diproses. Dengan mendefinisikan model, kita dapat memastikan bahwa data yang diterima atau dikirim sesuai dengan format yang diharapkan. Misalnya, dalam konteks aplikasi Flutter, model digunakan untuk mengonversi data JSON menjadi objek Dart dan sebaliknya, sehingga memudahkan pengelolaan data.
- Validasi Data
Dengan menggunakan model, kita dapat melakukan validasi terhadap data yang diterima. Misalnya, jika ada field yang wajib diisi, kita bisa menandai field tersebut sebagai required. Ini membantu mencegah kesalahan saat data tidak sesuai dengan ekspektasi.
- Mengurangi Kesalahan dalam Pengolahan Data
Tanpa model, pengembang mungkin akan kesulitan dalam mengelola data JSON yang kompleks, yang dapat menyebabkan kesalahan saat parsing atau serialisasi data. Model membantu meminimalisir risiko ini dengan menyediakan metode untuk mengonversi data secara otomatis antara format JSON dan objek dalam kode.

Jika kita tidak membuat model terlebih dahulu, beberapa kesalahan yang mungkin terjadi meliputi:

- Error Parsing JSON
Data JSON yang tidak terstruktur dengan baik dapat menyebabkan error saat parsing. Misalnya, jika payload JSON tidak valid atau memiliki format yang salah, aplikasi akan gagal memprosesnya dan menghasilkan error seperti "JSON tidak valid" atau "Malformed UTF-8 characters" ketika mencoba mengonversi data.
- Kesalahan Jumlah Entri dan Kedalaman
Tanpa model, kita mungkin tidak menyadari batasan pada jumlah entri objek atau kedalaman struktur JSON. Jika payload melebihi batas ini, aplikasi dapat mengalami error runtime, seperti "Exceeded object entry count" atau "Exceeded container depth" saat memproses input JSON.
- Kesulitan dalam Pemeliharaan Kode
Kode yang tidak terorganisir tanpa model akan lebih sulit untuk dipelihara dan dikembangkan di masa depan. Model membantu menjaga kode tetap bersih dan terstruktur, membuatnya lebih mudah untuk ditangani oleh pengembang lain.

Secara keseluruhan, pembuatan model untuk pengambilan dan pengiriman data JSON adalah langkah penting dalam pengembangan perangkat lunak yang efektif dan efisien. Model tidak hanya membantu dalam pengelolaan data tetapi juga mencegah berbagai kesalahan yang dapat mengganggu fungsionalitas aplikasi.



2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini.

Library http dalam konteks pemrograman, khususnya di bahasa pemrograman Dart (yang sering digunakan dalam pengembangan aplikasi Flutter), memiliki beberapa fungsi penting yang mendukung komunikasi antara aplikasi dan server melalui protokol HTTP. Berikut adalah penjelasan mengenai fungsi utama dari library ini:

- Mengirim Permintaan HTTP
Library http memungkinkan pengembang untuk mengirim berbagai jenis permintaan HTTP, seperti GET, POST, PUT, dan DELETE. Ini sangat penting untuk berinteraksi dengan API dan mengambil data dari server atau mengirim data ke server. Misalnya, permintaan GET digunakan untuk mengambil data dari server, sementara POST digunakan untuk mengirim data baru ke server.
- Menerima Respons dari Server
Setelah mengirimkan permintaan, library ini juga memfasilitasi penerimaan respons dari server. Respons ini dapat berisi data dalam format JSON atau format lainnya yang kemudian dapat diproses lebih lanjut dalam aplikasi. Respons tersebut juga mencakup status kode yang menunjukkan hasil dari permintaan yang dilakukan.
- Mempermudah Pengelolaan Data JSON
Library http sering digunakan bersama dengan model untuk memudahkan pengelolaan data JSON. Setelah menerima respons JSON dari server, pengembang dapat dengan mudah mengonversi data tersebut menjadi objek Dart menggunakan metode yang telah didefinisikan dalam model. Ini membantu dalam memanipulasi dan menampilkan data dalam aplikasi.
- Menangani Kesalahan
Library ini juga menyediakan cara untuk menangani kesalahan yang mungkin terjadi selama proses pengiriman atau penerimaan data. Dengan memeriksa status kode respons, pengembang dapat menentukan apakah permintaan berhasil atau tidak dan mengambil tindakan yang sesuai.

Secara keseluruhan, library http adalah alat yang sangat berguna bagi pengembang untuk melakukan komunikasi jaringan dalam aplikasi mereka. Dengan kemampuannya untuk mengirim permintaan HTTP, menerima respons, dan menangani data JSON, library ini menjadi komponen penting dalam pengembangan aplikasi berbasis web dan mobile yang terhubung dengan layanan backend.



3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

CookieRequest dalam konteks aplikasi Flutter berfungsi untuk mengelola cookie yang digunakan dalam komunikasi HTTP. Berikut adalah penjelasan mengenai fungsi CookieRequest dan alasan mengapa instance-nya perlu dibagikan ke semua komponen di aplikasi Flutter.

Fungsi dari CookieRequest

- Manajemen Sesi
CookieRequest memungkinkan aplikasi untuk menyimpan dan mengirim cookie yang berkaitan dengan sesi pengguna. Ini penting untuk menjaga status autentikasi pengguna, sehingga pengguna tidak perlu masuk kembali setiap kali mereka mengakses aplikasi setelah sesi berakhir.
- Penyimpanan Data
Dengan CookieRequest, data penting seperti preferensi pengguna dan informasi yang berkaitan dengan interaksi sebelumnya dapat disimpan dalam cookie. Ini membantu dalam memberikan pengalaman pengguna yang lebih personal dan relevan, seperti menyimpan item dalam keranjang belanja atau pengaturan tampilan.
- Pengiriman Cookie Otomatis
Library ini secara otomatis mengelola pengiriman cookie yang relevan dengan setiap permintaan HTTP. Hal ini mengurangi beban pengembang untuk secara manual menambahkan cookie ke setiap permintaan, sehingga membuat kode menjadi lebih bersih dan mudah dipelihara.

Mengapa Instance CookieRequest Perlu Dibagikan?

- Konsistensi Data
Dengan membagikan instance CookieRequest ke semua komponen, kita memastikan bahwa semua bagian aplikasi memiliki akses yang konsisten terhadap data cookie yang sama. Ini penting untuk menjaga integritas data, terutama ketika beberapa komponen mungkin perlu membaca atau memperbarui informasi yang sama.
- Pengelolaan Sesi Terpusat
Membagikan instance ini memungkinkan pengelolaan sesi pengguna dilakukan secara terpusat. Jika ada perubahan pada cookie (misalnya, saat pengguna melakukan logout), perubahan tersebut dapat diterapkan di seluruh aplikasi tanpa perlu memperbarui setiap komponen secara terpisah.
- Efisiensi Kode
Dengan menggunakan satu instance CookieRequest, kita dapat menghindari duplikasi kode dan mengurangi kompleksitas dalam pengelolaan cookie di berbagai bagian aplikasi. Ini juga memudahkan pengujian dan pemeliharaan kode, karena perubahan hanya perlu dilakukan di satu tempat.

Secara keseluruhan, CookieRequest memainkan peran penting dalam manajemen status pengguna dan personalisasi pengalaman aplikasi, sementara berbagi instance-nya di seluruh komponen meningkatkan konsistensi dan efisiensi dalam pengembangan aplikasi Flutter.



4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

Mekanisme pengiriman data dalam aplikasi Flutter, mulai dari input hingga ditampilkan di antarmuka pengguna, melibatkan beberapa langkah penting. Berikut adalah penjelasan rinci mengenai proses ini:

- Pengumpulan Input Data
Input dari Pengguna
Pengguna memasukkan data melalui antarmuka pengguna (UI), seperti form atau widget input. Misalnya, dalam aplikasi pengelolaan tugas, pengguna dapat memasukkan judul dan deskripsi tugas baru.
- Mengirim Data ke Server
Menggunakan HTTP Request
Setelah data dikumpulkan, aplikasi akan mengirimkan data tersebut ke server menggunakan permintaan HTTP. Untuk ini, kita perlu menambahkan paket http ke dalam proyek Flutter. Setelah menambahkan dependensi, kita dapat menggunakan metode seperti http.post untuk mengirim data ke server.
- Mengolah Respons dari Server
Menangani Respons
Setelah mengirimkan data, server akan memberikan respons yang bisa berupa konfirmasi keberhasilan atau informasi lainnya. Respons ini biasanya dalam format JSON yang perlu diolah.
- Mengonversi Respons JSON menjadi Objek Dart
Modelisasi Data
Untuk memudahkan penggunaan data yang diterima, kita sering kali membuat model Dart yang sesuai dengan struktur JSON. Ini memungkinkan kita untuk mengonversi respons JSON menjadi objek Dart.
- Menampilkan Data di Antarmuka Pengguna
Update UI
Setelah data berhasil dikirim dan respons diterima, kita dapat memperbarui antarmuka pengguna dengan data baru. Ini bisa dilakukan dengan menggunakan setState pada widget Stateful.

Proses pengiriman data di Flutter melibatkan pengumpulan input dari pengguna, pengiriman data melalui HTTP request, pengolahan respons dari server, konversi respons JSON menjadi objek Dart, dan akhirnya menampilkan data tersebut di antarmuka pengguna. Dengan mengikuti langkah-langkah ini, aplikasi dapat berinteraksi dengan server secara efektif dan memberikan pengalaman pengguna yang baik.



5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Mekanisme autentikasi dalam aplikasi Flutter yang berinteraksi dengan backend Django melibatkan beberapa langkah, mulai dari pendaftaran (register), login, hingga logout. Berikut adalah penjelasan rinci mengenai proses ini.

Pendaftaran (Register)

- Input Data Akun
Pengguna memasukkan data pendaftaran melalui form di aplikasi Flutter. Data yang biasanya diminta meliputi username dan password.
- Mengirim Data ke Django
Setelah pengguna mengisi form, aplikasi akan mengirimkan data tersebut ke endpoint Django menggunakan permintaan HTTP POST.
- Proses di Django
Django menerima data dan memvalidasi input menggunakan serializer. Jika valid, Django akan membuat akun baru dan mengembalikan respons yang sesuai.

Login

- Input Data Login
Pengguna memasukkan username dan password untuk login melalui form di aplikasi Flutter.
- Mengirim Permintaan Login
Aplikasi mengirimkan permintaan login ke endpoint Django dengan data yang dimasukkan oleh pengguna.
- Proses di Django
Django memverifikasi kredensial yang diberikan. Jika valid, server mengembalikan token autentikasi yang akan digunakan untuk sesi pengguna.

Logout

- Mengirim Permintaan Logout
Ketika pengguna ingin logout, aplikasi akan mengirimkan permintaan ke server untuk menghapus token autentikasi.
- Proses di Django
Django akan memvalidasi token yang diberikan dan menghapusnya dari server, sehingga sesi pengguna berakhir.

Menampilkan Menu Setelah Autentikasi

Setelah berhasil login, aplikasi Flutter dapat menampilkan menu atau halaman utama kepada pengguna. Ini dilakukan dengan menggunakan Navigator untuk berpindah ke halaman baru.

Proses autentikasi dari login, register, hingga logout dalam aplikasi Flutter yang terhubung dengan backend Django melibatkan pengumpulan input dari pengguna, pengiriman data melalui permintaan HTTP, pemrosesan data di server menggunakan Django, dan akhirnya menampilkan menu atau halaman berdasarkan status autentikasi pengguna. Dengan mengikuti langkah-langkah ini, aplikasi dapat memberikan pengalaman pengguna yang aman dan efisien.



6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

- Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
- Membuat fungsi register di proyek django di app authentication, melakukan routing, dan membuat folder baru di proyek flutter bernama screens dan di dalamnya membuat halaman register.dart. 
- Mengirim request register ke django dan django akan memberikan respons.
- Membuat halaman login pada proyek tugas Flutter. Membuat fungsi login di proyek django di app authentication, melakukan routing, dan membuat halaman login.dart di folder screens di proyek flutter. 
- Mengirim request untuk login ke django dan django akan memberikan respons apakah login berhasil atau tidak.
- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter. 
- Memanggil fungsi await request.postJson(...) yang mengirimkan request ke parameter url yaitu django di localhost.
- Membuat model kustom sesuai dengan proyek aplikasi Django. 
- Mengambil data dalam bentuk json yang ada di proyek djang.
- Mengubah ke dalam bahasa dart menggunakan bantuan website Quicktype dan memasukkannya ke file product_entry.dart di folder baru bernama models.
- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. 
- Membuat file list_productentry lalu menampilkan tiap fields product di widget Text dengan cara Text("${snapshot.data![index].fields.name}") untuk fields name dan fields-fields lainnya.
- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar item.
- Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login. 
- Mengambil data produk dengan fungsi fetchProduct ke url http://127.0.0.1:8000/json/ dan mengonversi ke list object Product.