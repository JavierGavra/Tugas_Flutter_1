import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/pertanyaan4.dart';

class Pertanyaan3 extends StatelessWidget {
  Pertanyaan3({Key? key, required this.jawaban1_3, required this.jawaban2_3})
      : super(key: key);

  num jawaban1_3, jawaban2_3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("Pertanyaan 3")),
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
                  "Suatu gedung perkantoran dengan ukuran 20 meter × 30 meter. Ukuran gedung tersebut pada denah adalah 40cm × 60cm. Skala yang digunakan pada denah tersebut adalah...",
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pertanyaan4(
                                            jawaban1_4: jawaban1_3,
                                            jawaban2_4: jawaban2_3,
                                            jawaban3_4: 20,
                                          )));
                            },
                            child: Text("1 : 50"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pertanyaan4(
                                            jawaban1_4: jawaban1_3,
                                            jawaban2_4: jawaban2_3,
                                            jawaban3_4: 0,
                                          )));
                            },
                            child: Text("1 : 100"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                  ]),
                  TableRow(children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pertanyaan4(
                                            jawaban1_4: jawaban1_3,
                                            jawaban2_4: jawaban2_3,
                                            jawaban3_4: 0,
                                          )));
                            },
                            child: Text("1 : 500"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffff0000)))),
                    Container(
                        margin: EdgeInsets.all(10),
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pertanyaan4(
                                            jawaban1_4: jawaban1_3,
                                            jawaban2_4: jawaban2_3,
                                            jawaban3_4: 0,
                                          )));
                            },
                            child: Text("1 : 1000"),
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
