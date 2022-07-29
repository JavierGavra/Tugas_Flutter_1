import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/pertanyaan1.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key, required this.hasil}) : super(key: key);

  num hasil;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              "images/banner_tugas_flutter.png",
              width: double.infinity,
              height: 230,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 16),
            Container(
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.all(6),
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.white),
              child: Text(
                "Jawablah 5 Pertanyaan matematika berikut untuk memperoleh nilai dibawah, klik tombol \"Ayo Mulai!\" untuk bermain!",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nilaimu :",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    widget.hasil.toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 340),
            Container(
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pertanyaan1()));
                  },
                  child: Text("Ayo Mulai!"),
                  style: ElevatedButton.styleFrom(primary: Color(0xffff0000))),
            )
          ],
        ),
      ),
    );
  }
}
