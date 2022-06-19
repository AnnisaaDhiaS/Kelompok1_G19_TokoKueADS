import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_kue/daftar_kue.dart';
import 'package:toko_kue/daftar_pesanan.dart';
import 'package:toko_kue/pemesanan.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<BottomNavigationBarItem> _myItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.post_add_rounded),
      label: "Pemesanan",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list_alt_rounded),
      label: "List Pesanan",
    ),
  ];

  final List<Widget> _myViews = [
    HomePageKue(),
    AllFieldsForm(),
    daftar_pesanan()
  ];

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myViews.elementAt(_pageIndex),
      //untuk menampilkan atau memanggil icons dari final tadi
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromARGB(255, 113, 10, 10),
        currentIndex: _pageIndex,
        items: _myItems,
        onTap: (int newIndex) {
          setState(() {
            _pageIndex = newIndex;
          });
        },
      ),
    );
  }
}
