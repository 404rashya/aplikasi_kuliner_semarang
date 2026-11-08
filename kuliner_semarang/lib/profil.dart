import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  // satu baris menu
  Widget _menu(IconData ikon, String teks) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(ikon, color: const Color.fromARGB(255, 98, 29, 29)),
          const SizedBox(width: 10),
          Text(teks),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 247, 245),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Icon(
              Icons.person,
              size: 80,
              color: Color.fromARGB(255, 98, 29, 29),
            ),
            const Text(
              'Rashya Fika Putra',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text('25670101'),
            const SizedBox(height: 20),
            _menu(Icons.settings, 'Pengaturan Akun'),
            _menu(Icons.notifications, 'Notifikasi'),
            _menu(Icons.info, 'Tentang Aplikasi'),
            _menu(Icons.headset_mic, 'Bantuan & Dukungan'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
