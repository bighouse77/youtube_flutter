// ignore_for_file: file_names, constant_identifier_names, missing_return



/* 
  ***************************** A T E N Ç Ã O **********************************
  Comentário abaixo, anula completamente o NULL SAFETY. Ele será necessário
  em alguns momentos.

                        Comentario: @dart=2.9
*/
// @dart=2.9



import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube_flutter/model/Video.dart';

const CHAVE_YOUTUBE_API = "AIzaSyC2xWVp2z-d0mFNRWBGYuPEybgdFMn0dV8";
const ID_CANAL = "UC8XGh6aU2yZf7AbnfPzMczA";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  /* 
   parametros solicitados encontrados na documentação: 
   https://developers.google.com/youtube/v3/docs/search/list
  */
  Future<List<Video>> pesquisar(String pesquisa) async {
    http.Response response = await http.get(Uri.parse(
      URL_BASE + "search"
      // passando parâmetros!
      "?part=snippet"
      "&type=video"
      "&maxResults=100"
      "&order=date"
      "&key=$CHAVE_YOUTUBE_API"
      "&channelId=$ID_CANAL"
      "&q=$pesquisa"));

    if (response.statusCode == 200) {
      // convertendo json para Map para poder acessar
      Map<String, dynamic> dadosJson = json.decode(response.body);

      // o metodo map irá percorrer cada um dos itens dentro de dadosJson["items"]
      List<Video> videos = dadosJson["items"].map<Video>((map) {
        return Video.fromJson(map);
      }).toList();

      return videos;

      /*
      for (var video in dadosJson["items"]) {
        print("Resultado: " + video.toString());
      }
      */
    } else {}
  }
}
