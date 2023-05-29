// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, avoid_unnecessary_containers, use_key_in_widget_constructors, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

class card_View3 extends StatelessWidget {
  const card_View3({required this.photos, required this.names_photos});

  final String photos;
  final String names_photos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 90,
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 85, top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names_photos,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 10),
                                Text('French Fry Boards Are The New '),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.album, color: Colors.orange),
                                    Text(' Normal    '),
                                    Icon(Icons.add_location_alt_sharp,
                                        color: Colors.green),
                                    Text(' 17km    '),
                                    Icon(Icons.add_shopping_cart_rounded,
                                        color: Colors.red),
                                    Text('   32min'),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 8),
                            Text(
                              '\$35.99',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigo),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                image: DecorationImage(
                    image: AssetImage(photos), fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
