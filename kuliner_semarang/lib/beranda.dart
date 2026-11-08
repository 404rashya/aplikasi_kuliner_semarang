import 'package:flutter/material.dart';
import 'daftar_kuliner.dart';
import 'riwayat.dart';
import 'profil.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 247, 245),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Halo, Foodies!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Mau makan apa hari ini?',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 20),

              // banner
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 254, 3, 3),
                      Color.fromARGB(255, 98, 29, 29),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Jelajahi Kuliner Semarang',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 238, 240, 241),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Rasa yang tak terlupakan di setiap sudut kota!',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 238, 240, 241),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DaftarKuliner(),
                          ),
                        );
                      },
                      child: const Text('Lihat Sekarang'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // rekomendasi
              const Text(
                'Rekomendasi Untukmu',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/lumpia.jpg',
                        width: 140,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      const Text('Lumpia Semarang'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/tahu_gimbal.jpg',
                        width: 140,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 5),
                      const Text('Tahu Gimbal'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // tombol ke halaman lain
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Riwayat()),
                      );
                    },
                    child: const Text('Riwayat'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Profil()),
                      );
                    },
                    child: const Text('Profil'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
