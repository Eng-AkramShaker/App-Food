// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, camel_case_types, use_key_in_widget_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

class card_View2 extends StatelessWidget {
  const card_View2({required this.photos, required this.names_photos});

  final String photos;
  final String names_photos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Container(
          height: 200,
          width: 200,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: 250,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(photos), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 10,
                child: Container(
                  width: 180,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(names_photos),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('4.2 '),
                            Icon(Icons.star, size: 15, color: Colors.green),
                            Icon(Icons.star, size: 15, color: Colors.green),
                            Icon(Icons.star, size: 15, color: Colors.green),
                            Icon(Icons.star, size: 15, color: Colors.grey),
                            Text(' (12+)'),
                            SizedBox(width: 10),
                            Text('\$25',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo))
                          ],
                        )
                      ]),
                ),
              )
            ],
          )),
    );
  }
}
