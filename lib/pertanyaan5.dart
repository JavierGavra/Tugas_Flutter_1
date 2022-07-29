import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/hasil.dart';

class Pertanyaan5 extends StatelessWidget {
  Pertanyaan5(
      {Key? key,
      required this.jawaban1_5,
      required this.jawaban2_5,
      required this.jawaban3_5,
      required this.jawaban4_5})
      : super(key: key);

  num jawaban1_5, jawaban2_5, jawaban3_5, jawaban4_5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("Pertanyaan 5")),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffff0000),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Container(
                height: 190,
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(6),
                decoration:
                    BoxDecoration(border: Border.all(), color: Colors.white),
                child: Text(
                  "Suatu pekerjaan dapat diselesaikan oleh 42 pekerja dalam waktu 50 hari. Agar pekerjaan tersebut dapat selesai dalam waktu 35 hari, perlu tambahan pekerja sebanyak...",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(height: 34),

              // Button Jawab
              Table(
                children: [
                  TableRow(children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HasilPage(
                                        jawaban1: jawaban1_5,
                                        jawaban2: jawaban2_5,
                                        jawaban3: jawaban3_5,
                                        jawaban4: jawaban4_5,
                                        jawaban5: 0)),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text("60 orang"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HasilPage(
                                        jawaban1: jawaban1_5,
                                        jawaban2: jawaban2_5,
                                        jawaban3: jawaban3_5,
                                        jawaban4: jawaban4_5,
                                        jawaban5: 0)),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text("22 orang"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                  ]),
                  TableRow(children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HasilPage(
                                        jawaban1: jawaban1_5,
                                        jawaban2: jawaban2_5,
                                        jawaban3: jawaban3_5,
                                        jawaban4: jawaban4_5,
                                        jawaban5: 20)),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text("18 orang"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HasilPage(
                                        jawaban1: jawaban1_5,
                                        jawaban2: jawaban2_5,
                                        jawaban3: jawaban3_5,
                                        jawaban4: jawaban4_5,
                                        jawaban5: 0)),
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text("10 orang"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
            height: 30,
            color: Color(0xff616161),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Made by : Javier Gavra Abhinaya",
                  style: TextStyle(color: Colors.white),
                ))),
      ),
    );
  }
}
