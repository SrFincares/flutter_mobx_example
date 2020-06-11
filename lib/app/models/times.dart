import 'package:mobx/mobx.dart';

class Time {

  @observable
  String nome;
  @observable
  int ano;
  @observable
  String estadio;

  Time({this.nome, this.ano, this.estadio});

  Time.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    ano = json['ano'];
    estadio = json['estadio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['ano'] = this.ano;
    data['estadio'] = this.estadio;
    return data;
  }
}
