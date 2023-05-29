// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, non_constant_identifier_names, unused_import, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:test_1/widges/Search.dart';
import 'package:test_1/widges/widget_Share.dart';
import 'package:test_1/widges/list_view.dart';

import '../widges/list_View2.dart';
import '../widges/list_View3.dart';
import 'Food_Details.dart';

class Home extends StatelessWidget {
  List icons = [
    Icons.restaurant_menu,
    Icons.restaurant,
    Icons.restaurant_menu,
    Icons.restaurant,
    Icons.restaurant_menu,
    Icons.restaurant,
    Icons.restaurant_menu,
    Icons.restaurant,
  ];
  List names = [
    'lamb',
    'honey',
    'jam',
    'honey',
    'fruit',
    'garlic',
    'honey',
    'jam'
  ];

  List photolist = [
    "images/food1.jpg",
    "images/food2.jpg",
    "images/food3.jpg",
    "images/food4.jpg",
    "images/food10.jpg",
    "images/food6.jpg",
    "images/food2.jpg",
    "images/food3.jpg",
    "images/food4.jpg",
    "images/food5.jpg",
  ];
  List nameslist = [
    'Food is my passion',
    'Black Peppercorns',
    'Black Olives	',
    'lemon juice',
    'Black Lentils	',
    'Black Mushrooms	',
    'Black Peppercorns',
    'Black Olives	',
    'lemon juice',
    'Black Lentils	',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Food-App')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back.jpg'),

            colorFilter: ColorFilter.mode(
                Color.fromARGB(167, 27, 27, 27).withOpacity(0.6),
                BlendMode.darken),
            fit: BoxFit.cover, // -> 02
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myTitile(N_text: 'Explore', N_size: 20),
                  new_search(),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: icons.length,
                        itemBuilder: (context, index) {
                          return card_View1(
                              icon: icons[index], titile: names[index]);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 15),
                    child: myTitile(N_text: 'Popular Food', N_size: 20),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => goScreen()));
                    }),
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: photolist.length,
                          itemBuilder: (context, index) {
                            return card_View2(
                                photos: photolist[index],
                                names_photos: nameslist[index]);
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: myTitile(N_text: 'Top Offers', N_size: 20),
                  ),
                  InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => goScreen()));
                    }),
                    child: Container(
                      height: 430,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: photolist.length,
                          itemBuilder: (context, index) {
                            return card_View3(
                                photos: photolist[index],
                                names_photos: nameslist[index]);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
