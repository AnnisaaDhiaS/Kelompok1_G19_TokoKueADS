import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_kue/login.dart';
import 'package:toko_kue/main_page.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);
  Widget nama() {
    return Text(
      textAlign: TextAlign.center,
      "© Kelompok 1 ",
      style: TextStyle(
        fontSize: 15,
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 255, 252, 214),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 87, 2, 2),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 187, 123),
        title: Text("Welcome, Have a nice day"),
        leading: Icon(Icons.cake),
        shadowColor: Color.fromARGB(248, 231, 230, 220),
        titleTextStyle: TextStyle(
          color: Color.fromARGB(255, 87, 2, 2),
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 300,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bakery.png"),
                  ),
                ),
              ),
              Text(
                "Toko Kue ADS",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Color.fromARGB(255, 255, 252, 214),
                ),
              ),
              Text(
                "\n Kami menyediakan berbagai macam kue \n Dengan harga murah dan rasa yang nikmat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 255, 252, 214),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () => Get.off(Login()),
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 216, 187, 123)),
                child: Text(
                  "S E E   M O R E",
                  style: TextStyle(
                      color: Color.fromARGB(255, 247, 242, 242),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              nama(),
            ],
          ),
        ],
      ),
    );
  }
}
