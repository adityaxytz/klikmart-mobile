import 'package:flutter/material.dart';
import 'package:klikmart_mobile/screens/list_productentry.dart';
import 'package:klikmart_mobile/screens/menu.dart';
import 'package:klikmart_mobile/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: const Column(
      children: [
        Text(
          'Klikmart',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "Ayo pesan produk setiap hari disini!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
          ),
            ListTile(
    leading: const Icon(Icons.home_outlined),
    title: const Text('Halaman Utama'),
    // Bagian redirection ke MyHomePage
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.production_quantity_limits),
    title: const Text('Tambah Produk'),
    // Bagian redirection ke ProductEntryFormPage
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductEntryFormPage(),
        ),
          );
        },
      ),
  ListTile(
    leading: const Icon(Icons.add_card),
    title: const Text('Daftar Produk'),
    onTap: () {
        // Route menu ke halaman product
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductEntryPage()),
          );
        },
      ),
        ],
      ),
    );
  }
}