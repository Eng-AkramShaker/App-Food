// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

class myTitile extends StatelessWidget {
  const myTitile({
    Key? key,
    required this.N_text,
    required this.N_size,
  }) : super(key: key);

  final String N_text;
  final double N_size;

  @override
  Widget build(BuildContext context) {
    return Text(N_text,
        style: TextStyle(
            color: Color.fromARGB(255, 236, 255, 236),
            fontWeight: FontWeight.bold,
            fontSize: N_size));
  }
}
