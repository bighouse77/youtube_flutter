// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Inscricao extends StatefulWidget {
  const Inscricao({ Key? key }) : super(key: key);

  @override
  _InscricaoState createState() => _InscricaoState();
}

class _InscricaoState extends State<Inscricao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Inscrição",
          style: TextStyle(
            fontSize: 25
          ),
        ),
      ),
    );
  }
}