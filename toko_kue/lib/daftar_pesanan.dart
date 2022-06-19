import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:toko_kue/controller.dart';
import 'alert.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class list extends StatelessWidget {
  final String pembeli;
  final String kue;
  final String stat;
  final String ambil;
  final String pesan;
  final String jum;
  final String total;
  final Function? onUpdate;
  final Function? onDelete;
  bool active = true;
  void muncul(bool active) {
    if (active == true) {}
  }

  list(this.pembeli, this.kue, this.jum, this.total, this.ambil, this.pesan,
      this.stat,
      {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection("pesanan");

    Widget nota(String nama, String kue, String jumlah, int harga, String total,
        String pesan, String ambil, String status) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 252, 214),
        appBar: AppBar(
            title: const Text(
              'Nota',
            ),
            backgroundColor: Color.fromARGB(255, 139, 75, 75)),
        body: Center(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text("Toko Kue",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Text("Nama Pembeli : $nama",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Text("Tanggal Pemesanan : $pesan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Text("Tanggal Pengambilan : $ambil",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
              ),
              DataTable(
                columns: [
                  DataColumn(
                      label: Container(
                          width: 65,
                          child: Text('Nama \nKue',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)))),
                  DataColumn(
                      label: Container(
                          width: 2,
                          child: Text(":",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)))),
                  DataColumn(
                      label: Container(
                          width: 120,
                          child: Text(
                            kue,
                            textAlign: TextAlign.justify,
                          ))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Jumlah',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          jumlah,
                        ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Harga',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          harga.toString(),
                        ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Total Harga',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          total,
                        ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Status',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          status,
                          textAlign: TextAlign.justify,
                        ))),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  primary: Color.fromARGB(255, 255, 224, 170), // background
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  onPrimary: Color.fromARGB(255, 255, 162, 0), // foreground
                ),
                onPressed: () {
                  showTopSnackBar(
                    context,
                    CustomSnackBar.info(
                      message: "Sudah Melakukan Konfirmasi, Terimakasih~",
                    ),
                  );
                },
                child: Text(
                  'Konfirmasi Status Pengambilan',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget nota2(String nama, String kue, String jumlah, int harga,
        String total, String pesan, String ambil, String status) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 252, 214),
        appBar: AppBar(
            title: const Text(
              'Nota',
            ),
            backgroundColor: Color.fromARGB(255, 139, 75, 75)),
        body: Center(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Text("Toko Kue",
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 10, right: 10),
                child: Text("Nama Pembeli : $nama",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Text("Tanggal Pemesanan : $pesan",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: [
                    Text("Tanggal Pengambilan : $ambil",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
              ),
              DataTable(
                columns: [
                  DataColumn(
                      label: Container(
                          width: 65,
                          child: Text('Nama \nKue',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)))),
                  DataColumn(
                      label: Container(
                          width: 2,
                          child: Text(":",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)))),
                  DataColumn(
                      label: Container(
                          width: 120,
                          child: Text(
                            kue,
                            textAlign: TextAlign.justify,
                          ))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Jumlah',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          jumlah,
                        ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Harga',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          harga.toString(),
                        ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Total Harga',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          total,
                        ))),
                  ]),
                  DataRow(cells: [
                    DataCell(Container(
                        width: 65,
                        child: Text('Status',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 2,
                        child: Text(':',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)))),
                    DataCell(Container(
                        width: 50,
                        child: Text(
                          status,
                          textAlign: TextAlign.justify,
                        ))),
                  ]),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  primary: Color.fromARGB(255, 255, 162, 0), // background
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {
                  showTopSnackBar(
                    context,
                    CustomSnackBar.info(
                      message: "Konfirmasi Pengambilan Berhasil~",
                    ),
                  );
                  if (onUpdate != null) onUpdate!();
                  list(pembeli, kue, jum, total, ambil, pesan, stat);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return nota(
                        nama, kue, jumlah, harga, total, pesan, ambil, status);
                  }));
                },
                child: Text(
                  'Konfirmasi Status Pengambilan',
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
      );
    }

    Future<dynamic> Alerttt(BuildContext context, String Pesan) {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference pesanan = firestore.collection("pesanan");
      Widget batal = TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("BATAL"));
      Widget lanjut = TextButton(
          onPressed: () {
            if (onDelete != null) onDelete!();
            Navigator.of(context).pop();
          },
          child: Text("OK"));
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("PERINGATAN!",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1)),
            content: Text(Pesan),
            actions: [
              batal,
              lanjut,
            ],
          );
        },
      );
    }

    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(255, 87, 2, 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      pembeli,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    kue,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    stat,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(5),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.green[900],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          int harga;
                          if (kue == "Black Forest Cake") {
                            harga = 120000;
                          } else if (kue == "Bolu Gulung") {
                            harga = 100000;
                          } else if (kue == "Brownis") {
                            harga = 75000;
                          } else if (kue == "Red Velvet Cake") {
                            harga = 120000;
                          } else {
                            harga = 100000;
                          }
                          if (stat == "Belum diambil") {
                            Get.to(nota2(pembeli, kue, jum, harga, total, pesan,
                                ambil, stat));
                          } else {
                            Get.to(nota(pembeli, kue, jum, harga, total, pesan,
                                ambil, stat));
                          }
                        }),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.red[900],
                        ),
                        child: Icon(Icons.cancel_rounded, color: Colors.white),
                        onPressed: () {
                          Alerttt(
                              context, "Apakah anda yakin ingin menghapusnya?");
                        }),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class daftar_pesanan extends StatelessWidget {
  const daftar_pesanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SSController search = Get.find();
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference pesanan = firestore.collection("pesanan");
    String status = 'Sudah diambil';
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar Pesanan",
        ),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 255, 252, 214),
          fontSize: 20,
        ),
        backgroundColor: Color.fromARGB(255, 87, 2, 2),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 252, 214),
        ),
        child: ListView(
          children: [
            Stack(
              children: [
                StreamBuilder<QuerySnapshot>(
                    stream: pesanan
                        .where('Nama', isEqualTo: search.text1.text)
                        .snapshots(),
                    builder: (_, snapshot) {
                      return (snapshot.hasData)
                          ? Column(
                              children: snapshot.data!.docs
                                  .map((e) => list(
                                        e.get('Nama'),
                                        e.get('Nama Kue'),
                                        e.get('Jumlah'),
                                        e.get('Total Harga'),
                                        e.get('Tanggal Ambil'),
                                        e.get('Tanggal Pesan'),
                                        e.get('Status'),
                                      ))
                                  .toList(),
                            )
                          : Text("Loading");
                    }),
                StreamBuilder<QuerySnapshot>(
                    stream: pesanan
                        .where('Nama', isEqualTo: search.text1.text)
                        .snapshots(),
                    builder: (_, snapshot) {
                      return (snapshot.hasData)
                          ? Column(
                              children: snapshot.data!.docs
                                  .map((e) => list(
                                        e.get('Nama'),
                                        e.get('Nama Kue'),
                                        e.get('Jumlah'),
                                        e.get('Total Harga'),
                                        e.get('Tanggal Ambil'),
                                        e.get('Tanggal Pesan'),
                                        e.get('Status'),
                                        onUpdate: () {
                                          pesanan.doc(e.id).update(
                                            {'Status': status},
                                          );
                                        },
                                        onDelete: () {
                                          pesanan.doc(e.id).delete();
                                        },
                                      ))
                                  .toList(),
                            )
                          : Text("Loading");
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
