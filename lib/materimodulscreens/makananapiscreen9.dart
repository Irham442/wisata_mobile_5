import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/models/makanan_model.dart';
import 'package:wisata_mobile_5/services/makanan_service.dart';
import 'package:wisata_mobile_5/widget/makanan_card.dart';

class Makananapiscreen9 extends StatelessWidget {
  final MakananService _makananservice = MakananService();
  Makananapiscreen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Makanan Seafood',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder<List<MakananModel>>(
          future: _makananservice.fetchMakanan(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error : ${snapshot.error}"));
            } else {
              final daftarSeaFood = snapshot.data!;
              return ListView.builder(
                  itemCount: daftarSeaFood.length,
                  itemBuilder: (context, Index) {
                    return MakananCard(makananModel: daftarSeaFood[Index]);
                  });
            }
          }),
    );
  }
}

// flutter pub add http dependency http