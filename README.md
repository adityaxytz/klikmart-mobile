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