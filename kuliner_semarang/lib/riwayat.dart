import 'package:flutter/material.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({super.key});

  // satu baris riwayat
  Widget _item(String nama, String harga) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Icon(Icons.receipt, color: Color.fromARGB(255, 98, 29, 29)),
          const SizedBox(width: 10),
          Expanded(child: Text(nama)),
          Text(harga),
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
            const Text(
              'Riwayat Pesanan',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _item('Lumpia Semarang', 'Rp 60.000'),
            _item('Soto Bangkong', 'Rp 50.000'),
            _item('Tahu Gimbal', 'Rp 20.000'),
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
