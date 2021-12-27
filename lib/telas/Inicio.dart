// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({ Key? key }) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {

    // não precisa do Scaffold pois onde ele será chamado (telas), já está
    // inserido num Scaffold
    return Container(
      child: Center(
        child: Text(
          "Início",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}