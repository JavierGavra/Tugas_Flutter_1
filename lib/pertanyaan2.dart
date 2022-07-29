import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/pertanyaan3.dart';

class Pertanyaan2 extends StatelessWidget {
  Pertanyaan2({Key? key, required this.jawaban1_2}) : super(key: key);

  num jawaban1_2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("Pertanyaan 2")),
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
                  "Diketahui suatu barisan aritmatika dengan U2 = 8 dan U6 = 20. Jumlah 6 suku pertama barisan tersebut adalah...",
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
                                      builder: (context) => Pertanyaan3(
                                          jawaban1_3: jawaban1_2,
                                          jawaban2_3: 0)));
                            },
                            child: Text("150"),
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
                                      builder: (context) => Pertanyaan3(
                                          jawaban1_3: jawaban1_2,
                                          jawaban2_3: 20)));
                            },
                            child: Text("75"),
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
                                      builder: (context) => Pertanyaan3(
                                          jawaban1_3: jawaban1_2,
                                          jawaban2_3: 0)));
                            },
                            child: Text("50"),
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
                                      builder: (context) => Pertanyaan3(
                                          jawaban1_3: jawaban1_2,
                                          jawaban2_3: 0)));
                            },
                            child: Text("28"),
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
