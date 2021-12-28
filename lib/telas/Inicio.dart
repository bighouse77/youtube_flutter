// ignore_for_file: file_names, deprecated_member_use, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, avoid_unnecessary_containers, import_of_legacy_library_into_null_safe, use_key_in_widget_constructors, missing_return
// @dart=2.9

import 'package:flutter/material.dart';
import 'package:youtube_flutter/model/Video.dart';
import '../Api.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class Inicio extends StatefulWidget {
  String pesquisa;

  Inicio(this.pesquisa);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  _listarVideos(String pesquisa) {
    Future<List<Video>> videos;

    Api api = Api();
    return api.pesquisar(pesquisa);
  }

  @override
  void initState() {
    super.initState();
    print("chamado 1 - initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("chamado 2 - didChangeDepencies");
  }

  @override
  void didUpdateWidget(covariant Inicio oldWidget) {
    
    super.didUpdateWidget(oldWidget);
    print("chamado 2 - didUpdateWidget");
  }

  @override
  void dispose() {
    
    super.dispose();
    print("chamado 4 - dispose");
  }

  @override
  Widget build(BuildContext context) {
    print("chamado 3 - build");
    // não precisa do Scaffold pois onde ele será chamado (telas), já está
    // inserido num Scaffold
    return FutureBuilder<List<Video>>(
      future: _listarVideos(widget.pesquisa),
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
                    List<Video> videos = snapshot.data;
                    Video video = videos[index];

                    return GestureDetector(
                      onTap: () {
                        FlutterYoutube.playYoutubeVideoById(
                            apiKey: CHAVE_YOUTUBE_API,
                            videoId: video.id,
                            autoPlay: true,
                            fullScreen: true);
                      },
                      child: Column(
                        children: [
                          Container(
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    // BoxFit.cover pega todo o container
                                    fit: BoxFit.cover,
                                    image: NetworkImage(video.imagem)),
                              )),
                          ListTile(
                            title: Text(video.titulo),
                            subtitle: Text(video.descricao),
                          )
                        ],
                      ),
                    );
                  },
                  // permite que você coloque um separador (linha, divider)
                  separatorBuilder: (context, index) => Divider(
                        height: 2,
                        color: Colors.grey,
                      ),
                  itemCount: snapshot.data.length);
            } else {
              return Center(child: Text("Nenhum dado a ser exibido!"));
            }
        }
      },
    );
  }
}
