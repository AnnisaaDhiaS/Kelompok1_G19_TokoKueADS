import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'controller.dart';
import 'alert.dart';

class AllFieldsFormBloc extends FormBloc<String, String> {
  final nama = TextFieldBloc();
  final jumlah = TextFieldBloc();
  final harga = TextFieldBloc();

  final select1 = SelectFieldBloc(
    items: [
      'Black Forest Cake',
      'Chocolate Cake',
      'Strawberry Cake',
      'Vanilla Cake',
      'Red Velvet Cake',
      'Tiramisu',
    ],
  );

  final date1 = InputFieldBloc<DateTime?, dynamic>(initialValue: null);

  final date2 = InputFieldBloc<DateTime?, dynamic>(initialValue: null);

  AllFieldsFormBloc() {
    addFieldBlocs(fieldBlocs: [
      nama,
      select1,
      jumlah,
      date1,
      date2,
    ]);
  }

  @override
  void onSubmitting() async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 500));

      emitSuccess(canSubmitAgain: true);
    } catch (e) {
      emitFailure();
    }
  }
}

class AllFieldsForm extends StatelessWidget {
  AllFieldsForm({Key? key}) : super(key: key);
  final SSController search = Get.find();

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference data = firestore.collection("pesanan");
    Widget nota1(String nama, String kue, int jumlah, int harga, int total,
        String status, String pesan, String ambil) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 252, 214),
        appBar: AppBar(
            title: const Text(
              'Nota',
            ),
            backgroundColor: Color.fromARGB(255, 87, 2, 2)),
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
                          jumlah.toString(),
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
                          total.toString(),
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
            ],
          ),
        ),
      );
    }

    return BlocProvider(
      create: (context) => AllFieldsFormBloc(),
      child: Builder(
        builder: (context) {
          final formBloc = BlocProvider.of<AllFieldsFormBloc>(context);

          return Theme(
            data: Theme.of(context).copyWith(
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 87, 2, 2))),
                labelStyle: TextStyle(
                    color: Color.fromARGB(255, 87, 2, 2), fontSize: 17.0),
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                  title: const Text('Form Pesanan'),
                  titleTextStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 252, 214),
                    fontSize: 20,
                  ),
                  backgroundColor: Color.fromARGB(255, 87, 2, 2)),
              body: Container(
                width: NWidth,
                height: NHeight,
                color: Color.fromARGB(255, 255, 252, 214),
                child: FormBlocListener<AllFieldsFormBloc, String, String>(
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          DropdownFieldBlocBuilder<String>(
                            selectFieldBloc: formBloc.select1,
                            decoration: const InputDecoration(
                              labelText: 'Pilih Kue',
                              prefixIcon: Icon(Icons.cake),
                            ),
                            itemBuilder: (context, value) => FieldItem(
                              child: Text(value),
                            ),
                          ),
                          TextFieldBlocBuilder(
                            autofocus: true,
                            keyboardType: TextInputType.number,
                            textFieldBloc: formBloc.jumlah,
                            decoration: const InputDecoration(
                              labelText: 'Jumlah',
                              prefixIcon: Icon(Icons.shopping_basket),
                            ),
                          ),
                          DateTimeFieldBlocBuilder(
                            dateTimeFieldBloc: formBloc.date2,
                            canSelectTime: true,
                            format: DateFormat('dd-MM-yyy hh:mm'),
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2100),
                            decoration: const InputDecoration(
                              labelText: 'Tanggal Pengambilan',
                              prefixIcon: Icon(Icons.calendar_today),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0)),
                              primary:
                                  Color.fromARGB(255, 87, 2, 2), // background
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              onPrimary: Colors.white, // foreground
                            ),
                            onPressed: () {
                              if (formBloc.select1.value != null &&
                                  formBloc.jumlah.value != null &&
                                  formBloc.date2.value != null) {
                                var pembeli = search.text1.text;
                                var kue = formBloc.select1.value.toString();
                                var jumlah = formBloc.jumlah.value;
                                int jum = int.parse(jumlah);
                                var ambil = formBloc.date2.value
                                    .toString()
                                    .substring(0, 16);
                                var pesan =
                                    DateTime.now().toString().substring(0, 16);
                                var stat = "Belum diambil";
                                int harga;
                                if (kue == "Black Forest Cake") {
                                  harga = 160000;
                                } else if (kue == "Chocolate Cake") {
                                  harga = 120000;
                                } else if (kue == "Strawberry Cake") {
                                  harga = 130000;
                                } else if (kue == "Vanilla Cake") {
                                  harga = 75000;
                                } else if (kue == "Red Velvet Cake") {
                                  harga = 120000;
                                } else {
                                  harga = 100000;
                                }
                                int total = jum * harga;
                                data.add({
                                  'Nama': pembeli,
                                  'Nama Kue': kue,
                                  'Jumlah': '$jum',
                                  'Total Harga': '$total',
                                  'Tanggal Ambil': ambil,
                                  'Tanggal Pesan': pesan,
                                  'Status': stat,
                                });
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return nota1(pembeli, kue, jum, harga, total,
                                      stat, pesan, ambil);
                                }));
                              } else {
                                Alertt(context, "Semua Kolom Harap Di Isi");
                              }
                            },
                            child: Text(
                              'Tambah Pesanan',
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
