import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'alert.dart';
import 'controller.dart';
import 'package:toko_kue/daftar_kue.dart';
import 'package:toko_kue/daftar_pesanan.dart';
import 'main_page.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var NWidth = MediaQuery.of(context).size.width;
    var NHeight = MediaQuery.of(context).size.height;
    final SSController search = Get.put(SSController());

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: NWidth,
        height: NHeight,
        padding: EdgeInsets.only(top: 30, bottom: 30, right: 10, left: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
                Color.fromARGB(255, 213, 99, 109),
                Color.fromARGB(255, 87, 2, 2),
              ]),
        ),
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.only(right: 10, left: 10, top: 40),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 252, 214),
            borderRadius: BorderRadius.circular(18),
          ),
          child: ListView(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusColor: Color.fromARGB(255, 87, 2, 2),
                  labelText: "Username",
                  hintText: "Ex: Raihan",
                ),
                controller: search.text1,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    primary: Color.fromARGB(255, 87, 2, 2), // background
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    onPrimary: Color.fromARGB(255, 255, 252, 214), // foreground
                  ),
                  onPressed: () {
                    if (search.text1.text == "" || search.text1.text == "") {
                      Alertt(context, "Username tidak boleh kosong!!!");
                    } else if (search.text1.text == null) {
                      Alertt(context, "Username tidak boleh kosong!!!");
                    } else {
                      Get.off(HomePage());
                    }
                  },
                  child: Text("login")),
            ],
          ),
        ),
      ),
    );
  }
}
