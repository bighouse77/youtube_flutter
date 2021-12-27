// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube"),
        // icones botões
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("acao: search");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("acao: account_circle");
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
