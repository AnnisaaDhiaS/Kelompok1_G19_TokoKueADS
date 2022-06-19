import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> Alertt(BuildContext context, String Pesan){
  return showDialog(
    context: context, 
    builder: (context){
      return AlertDialog(
        title: Text("PERINGATAN!",style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, letterSpacing: 1)),
        content: Text(Pesan),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            }, child: Text("OK"),
            )
        ],

      );
    },
  );
}