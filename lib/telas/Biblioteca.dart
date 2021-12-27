// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({ Key? key }) : super(key: key);

  @override
  _BibliotecaState createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Biblioteca",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}