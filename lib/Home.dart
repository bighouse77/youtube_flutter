// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:youtube_flutter/telas/Biblioteca.dart';
import 'package:youtube_flutter/telas/EmAlta.dart';
import 'package:youtube_flutter/telas/Inicio.dart';
import 'package:youtube_flutter/telas/Inscricao.dart';

class Home extends StatefulWidget {
  

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        // iconTheme personaliza todos os ícones
        iconTheme: IconThemeData(
          color: Colors.grey[850],
          opacity: 1,
        ),
        backgroundColor: Colors.white,
        title: Image.asset("images/youtube.png", width: 98, height: 22),
        // icones botões
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("acao: search");
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              print("acao: account_circle");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      // icones na parte inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        //type: BottomNavigationBarType.shifting => efeito de cores
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          const BottomNavigationBarItem(
            title: Text("Inicio"),
            icon: Icon(Icons.home),
          ),
          const BottomNavigationBarItem(
            title: Text("Em alta"),
            icon: Icon(Icons.whatshot),
          ),
          const BottomNavigationBarItem(
            title: Text("Inscrições"),
            icon: Icon(Icons.subscriptions),
          ),
          const BottomNavigationBarItem(
            title: Text("Biblioteca"),
            icon: Icon(Icons.folder),
          ),
        ],
      ),
    );
  }
}
