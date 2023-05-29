// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class new_search extends StatelessWidget {
  const new_search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          border: Border.all(),
        ),
        child: const Padding(
          padding: EdgeInsets.all(5),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Find a food or restaurant ',
              suffixIcon: Icon(Icons.add_road_rounded,
                  color: Color.fromARGB(255, 7, 165, 28)),
              prefixIcon:
                  Icon(Icons.search, color: Color.fromARGB(255, 7, 165, 28)),
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
