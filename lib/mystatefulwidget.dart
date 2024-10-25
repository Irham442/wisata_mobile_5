import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<Mystatefulwidget> createState() => _MystatefulwidgetState();
}

class _MystatefulwidgetState extends State<Mystatefulwidget> {
  var _JumlahHitungan = 0;

  void _Tambahangka() {
    setState(() {
      _JumlahHitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "INI STATEFUL WIDGET",
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            Text("$_JumlahHitungan"),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  _Tambahangka();
                },
                child: Text("Press The Bttn"))
          ],
        )),
      ),
    );
  }
}
