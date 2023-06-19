import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Deskripsi'),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10),
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height /4,
              width: MediaQuery.of(context).size.width/1.1,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Kalkulator BMI', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                    Divider(),
                    Text(
                          'berikut berupa aplikasi perhitungan yang digunakan untuk menghitung seberapa ideal berat badan dan tinggi badan sesuai dengan BMI(Body Mass Index)',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                  ],
                ),
              ),
            ),
            ),
          ),
        ),
      ],
    ),
    );
  }
}