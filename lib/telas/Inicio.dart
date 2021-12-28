// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:youtube_flutter/model/Video.dart';
import '../Api.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos() {
    Future<List<Video>> videos;

    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    // não precisa do Scaffold pois onde ele será chamado (telas), já está
    // inserido num Scaffold
    return FutureBuilder<List<Video>>(
      future: _listarVideos(),
      builder: (contex, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text("Teste")
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        height: 2,
                        color: Colors.red,
                      ),
                  itemCount: snapshot.data!.length);
            } else {
              return Center(child: Text("Nenhum dado a ser exibido!"));
            }

        }
      },
    );
  }
}
