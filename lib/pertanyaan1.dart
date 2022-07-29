import 'package:flutter/material.dart';
import 'package:tugas_flutter_1/pertanyaan2.dart';

class Pertanyaan1 extends StatelessWidget {
  const Pertanyaan1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(child: Text("Pertanyaan 1")),
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
                  "Jika selisih akar-akar persamaan sama dengan 5 , maka jumlah akar-akar persamaan adalah….",
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
                                      builder: (context) =>
                                          Pertanyaan2(jawaban1_2: 20)));
                            },
                            child: Text("11 atau -11"),
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
                                      builder: (context) =>
                                          Pertanyaan2(jawaban1_2: 0)));
                            },
                            child: Text("9 atau -9"),
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
                                      builder: (context) =>
                                          Pertanyaan2(jawaban1_2: 0)));
                            },
                            child: Text("8 atau -8"),
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
                                      builder: (context) =>
                                          Pertanyaan2(jawaban1_2: 0)));
                            },
                            child: Text("7 atau -7"),
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
