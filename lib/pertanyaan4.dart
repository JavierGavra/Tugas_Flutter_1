import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/pertanyaan5.dart';

class Pertanyaan4 extends StatelessWidget {
  Pertanyaan4(
      {Key? key,
      required this.jawaban1_4,
      required this.jawaban2_4,
      required this.jawaban3_4})
      : super(key: key);

  num jawaban1_4, jawaban2_4, jawaban3_4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("Pertanyaan 4")),
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
                  "Perbandingan permen Aurel, Rani, dan Dhea 5 : 3 : 2. Sedangkan jumlah permen Aurel dan Rani 64. Jumlah permen tiga orang tersebut adalah...",
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
                                      builder: (context) => Pertanyaan5(
                                            jawaban1_5: jawaban1_4,
                                            jawaban2_5: jawaban2_4,
                                            jawaban3_5: jawaban3_4,
                                            jawaban4_5: 0,
                                          )));
                            },
                            child: Text("70"),
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
                                      builder: (context) => Pertanyaan5(
                                            jawaban1_5: jawaban1_4,
                                            jawaban2_5: jawaban2_4,
                                            jawaban3_5: jawaban3_4,
                                            jawaban4_5: 20,
                                          )));
                            },
                            child: Text("80"),
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
                                      builder: (context) => Pertanyaan5(
                                            jawaban1_5: jawaban1_4,
                                            jawaban2_5: jawaban2_4,
                                            jawaban3_5: jawaban3_4,
                                            jawaban4_5: 0,
                                          )));
                            },
                            child: Text("88"),
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
                                      builder: (context) => Pertanyaan5(
                                            jawaban1_5: jawaban1_4,
                                            jawaban2_5: jawaban2_4,
                                            jawaban3_5: jawaban3_4,
                                            jawaban4_5: 0,
                                          )));
                            },
                            child: Text("108"),
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
