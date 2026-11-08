import 'package:flutter/material.dart';
import 'detail.dart';

class DaftarKuliner extends StatelessWidget {
  const DaftarKuliner({super.key});

  // satu baris kuliner di daftar
  Widget _item(
    BuildContext context,
    String gambar,
    String nama,
    String harga,
    String deskripsi,
    String lokasi,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(gambar, width: 80, height: 80, fit: BoxFit.cover),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(harga),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detail(
                          gambar: gambar,
                          nama: nama,
                          harga: harga,
                          deskripsi: deskripsi,
                          lokasi: lokasi,
                        ),
                      ),
                    );
                  },
                  child: const Text('Detail'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 247, 245),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'Daftar Kuliner',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _item(
                context,
                'assets/images/lumpia.jpg',
                'Lumpia Semarang',
                'Rp 25.000 - Rp 35.000',
                'Lumpia Semarang adalah makanan khas Semarang yang berisi rebung, telur, udang, dan daging ayam, dibungkus kulit lumpia yang tipis lalu digoreng hingga keemasan.',
                'Jl. Gang Lombok No.11, Semarang',
              ),
              _item(
                context,
                'assets/images/tahu_gimbal.jpg',
                'Tahu Gimbal',
                'Rp 15.000 - Rp 25.000',
                'Tahu Gimbal berisi tahu goreng, lontong, kol, tauge, telur, dan gimbal udang yang disiram bumbu kacang dan petis.',
                'Kawasan Simpang Lima, Semarang',
              ),
              _item(
                context,
                'assets/images/soto_bangkong.jpg',
                'Soto Bangkong',
                'Rp 20.000 - Rp 30.000',
                'Soto Bangkong punya kuah kaldu yang bening dan segar, berisi suwiran daging, tauge, dan bawang goreng.',
                'Perempatan Bangkong, Semarang',
              ),
              _item(
                context,
                'assets/images/nasi_gandul.jpg',
                'Nasi Gandul',
                'Rp 18.000 - Rp 28.000',
                'Nasi Gandul adalah nasi dengan kuah santan gurih yang diberi irisan daging sapi atau jeroan.',
                'Kawasan Kota Lama, Semarang',
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
