// ignore_for_file: file_names, prefer_const_constructors
// @dart=2.9

// ### Esta classe é para configurar o componente de pesquisa!! ###

import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  // definir ações
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            // query captura a pesquisa. Setando vazio, ele limpa o campo
            query = "";
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  // botão de voltar
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, "");
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  // constrói o resultado do que foi pesquisado
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  // define sugestões de pesquisa
  Widget buildSuggestions(BuildContext context) {
    //print("resultado: pesquisa realizada" + query);
    List<String> lista = [];

    if (query.isNotEmpty) {
      lista = [
        "fé", "perseverança", "familia", "deus", "jesus", "oracao", "jejum",
        "esperança", "pecado", "biblia", "maturidade", "amor", "entendimento",
        "semeadura", "superstição"
        // este where irá fazer o filtro de sugestões (aplicação estática)
      ]
          .where((texto) => texto.toLowerCase().startsWith(query.toLowerCase()))
          .toList();

      return ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                close(context, lista[index]);
              },
              title: Text(lista[index]),
            );
          });
    } else {
      return Center(
        child: Text("Nenhum resultado!"),
      );
    }
  }
}
