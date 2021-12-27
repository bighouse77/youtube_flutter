// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class EmAlta extends StatefulWidget {
  const EmAlta({ Key? key }) : super(key: key);

  @override
  _EmAltaState createState() => _EmAltaState();
}

class _EmAltaState extends State<EmAlta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Em alta",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}