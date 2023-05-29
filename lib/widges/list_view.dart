// ignore_for_file: prefer_const_constructors, unnecessary_import, camel_case_types, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';

import '../pages/Food_Details.dart';

class card_View1 extends StatelessWidget {
  const card_View1({required this.icon, required this.titile});

  final IconData icon;
  final String titile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 10),
      child: InkWell(
        onTap: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => goScreen()));
        }),
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 248, 229),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                icon,
                color: Color.fromARGB(255, 11, 22, 15),
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                titile,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
