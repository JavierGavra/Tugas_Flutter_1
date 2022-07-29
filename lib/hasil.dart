import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/homeScreen.dart';

class HasilPage extends StatefulWidget {
  HasilPage(
      {Key? key,
      required this.jawaban1,
      required this.jawaban2,
      required this.jawaban3,
      required this.jawaban4,
      required this.jawaban5})
      : super(key: key);

  num jawaban1, jawaban2, jawaban3, jawaban4, jawaban5;

  @override
  State<HasilPage> createState() => _HasilPageState();
}

class _HasilPageState extends State<HasilPage> {
  num hasilJawaban(num jawab1, num jawab2, num jawab3, num jawab4, num jawab5) {
    return jawab1 + jawab2 + jawab3 + jawab4 + jawab5;
  }

  Color nilaiWarna(num input) {
    if (input == 20) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  String boolJawaban(num input) {
    if (input == 20) {
      return "Benar";
    } else {
      return "Salah";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                color: Color(0xffdc0202),
                alignment: Alignment.center,
                child: Text(
                  "Hasil",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              CustomRow(
                  deskripsi: "Pertanyaan 1",
                  nilaiBool: boolJawaban(widget.jawaban1),
                  warna: nilaiWarna(widget.jawaban1)),
              SizedBox(height: 20),
              CustomRow(
                  deskripsi: "Pertanyaan 2",
                  nilaiBool: boolJawaban(widget.jawaban2),
                  warna: nilaiWarna(widget.jawaban2)),
              SizedBox(height: 20),
              CustomRow(
                  deskripsi: "Pertanyaan 3",
                  nilaiBool: boolJawaban(widget.jawaban3),
                  warna: nilaiWarna(widget.jawaban3)),
              SizedBox(height: 20),
              CustomRow(
                  deskripsi: "Pertanyaan 4",
                  nilaiBool: boolJawaban(widget.jawaban4),
                  warna: nilaiWarna(widget.jawaban4)),
              SizedBox(height: 20),
              CustomRow(
                  deskripsi: "Pertanyaan 5",
                  nilaiBool: boolJawaban(widget.jawaban5),
                  warna: nilaiWarna(widget.jawaban5)),
              SizedBox(height: 36),
              Container(
                height: 50,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(border: Border.all()),
                alignment: Alignment.center,
                child: Text(
                  "Nilaimu : ${hasilJawaban(widget.jawaban1, widget.jawaban2, widget.jawaban3, widget.jawaban4, widget.jawaban5)}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(height: 290),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(
                                  hasil: hasilJawaban(
                                      widget.jawaban1,
                                      widget.jawaban2,
                                      widget.jawaban3,
                                      widget.jawaban4,
                                      widget.jawaban5),
                                )),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text("Kembali ke Halaman Utama"),
                    style:
                        ElevatedButton.styleFrom(primary: Color(0xffff0000))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  CustomRow(
      {Key? key,
      required this.deskripsi,
      required this.nilaiBool,
      required this.warna})
      : super(key: key);

  String deskripsi, nilaiBool;
  var warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$deskripsi :", style: TextStyle(fontSize: 16)),
          Text("$nilaiBool", style: TextStyle(fontSize: 16, color: warna)),
        ],
      ),
    );
  }
}
