// ignore_for_file: file_names

class Video {
  String? id;
  String? titulo;
  String? descricao;
  String? imagem;
  String? canal;

  Video({this.id, this.titulo, this.descricao, this.imagem, this.canal});

  /*
  static converterJson(Map<String, dynamic> json){
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }
  */

  // factory: instancia apenas uma vez, alterando apenas os dados
  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json["id"]["videoId"],
      titulo: json["snippet"]["title"],
      imagem: json["snippet"]["thumbnails"]["high"]["url"],
      canal: json["snippet"]["channelId"],
    );
  }
}