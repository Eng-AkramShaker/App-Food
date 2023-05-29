// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, unused_element, non_constant_identifier_names, curly_braces_in_flow_control_structures, sort_child_properties_last, avoid_print, must_be_immutable, unnecessary_brace_in_string_interps, camel_case_types, override_on_non_overriding_member, unused_label, unnecessary_new, avoid_unnecessary_containers, sized_box_for_whitespace, unused_local_variable, avoid_types_as_parameter_names, equal_keys_in_map, unused_import, deprecated_member_use

import 'package:flutter/material.dart';
import 'pages/Home-Page.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
