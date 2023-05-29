// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, unnecessary_new, sort_child_properties_last, file_names

import 'package:flutter/material.dart';

class goScreen extends StatefulWidget {
  @override
  State<goScreen> createState() => _goScreenState();
}

class _goScreenState extends State<goScreen> {
  int counter1 = 0;

  int total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 16, 158, 125),
          title: Text('Food Details')),
      body: Stack(
        children: [
          Positioned(
            bottom: 494,
            child: Container(
              height: 405,
              width: 550,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/food10.jpg'))),
            ),
          ),
          Positioned(
            right: 10,
            top: 20,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  total;
                });
              },
              child: Row(
                children: [
                  Icon(Icons.add_shopping_cart,
                      size: 30, color: Color.fromARGB(255, 16, 158, 125)),
                  Text('$total',
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(13),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                foregroundColor: Color.fromARGB(255, 16, 158, 125),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 320,
                bottom: 90,
                child: Container(
                  width: 540,
                  height: 612,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Food Details',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
                          Divider(
                            height: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'When you think of Japanese cuisine raw fish and seaweed might come to mind. Italian cooking probablymakes you think of pasta risotto and lots of cheese. But defining American food is less easy—the country is a melting pot of culinary influences. Thats why the culinary experts chefs and food writers for Flavored Nation together a list of the best American foods in every state each year. The annual list announced in April includes data research consumer input via social media and conversatio with state tourism boards. Pulled pork shrimp and grits key lime pie, and lobster roll are classic American dishes that you can easily associate with a state or region. We hear North Dakota makes excellent strawberry rhubarb pancakes and West Virginia has killer cornbread and for more dont miss the most famous slow cooker dish in every state.',
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                bottom: 8,
                right: 23,
                child: Container(
                  width: 490,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 219, 218, 218)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2, bottom: 2),
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    counter1--;
                                  });
                                },
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 16, 158, 125),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('$counter1',
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black)),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    counter1++;
                                  });
                                },
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  foregroundColor: Colors.white,
                                  backgroundColor:
                                      Color.fromARGB(255, 16, 158, 125),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(' \$ ${counter1 * 30} =',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 141, 24, 24))),
                              ),
                              FloatingActionButton.extended(
                                onPressed: () {
                                  setState(() {
                                    total = counter1;
                                  });
                                },
                                label: Text('\$30 | Send to cart'),
                                icon: Icon(Icons.add_shopping_cart),
                                backgroundColor:
                                    Color.fromARGB(255, 16, 158, 125),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
