import 'package:flutter/material.dart';
import 'package:klikmart_mobile/screens/productentry_form.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  // Method untuk menentukan warna latar belakang berdasarkan nama item
  Color getBackgroundColor() {
    switch (item.name) {
      case "Lihat Daftar Produk":
        return Colors.yellow; // Warna kuning untuk Lihat Daftar Produk
      case "Tambah Produk":
        return Colors.blue; // Warna biru untuk Tambah Produk
      case "Logout":
        return Colors.red; // Warna merah untuk Logout
      default:
        return Colors.grey; // Default warna abu-abu jika item tidak sesuai
    }
  }

  // Method untuk menentukan warna teks
  Color getTextColor() {
    return Colors.white; // Teks putih untuk semua tombol
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getBackgroundColor(),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
              ),
            );
          }
        },

        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: getTextColor(),
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: getTextColor()), // Warna teks putih
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}