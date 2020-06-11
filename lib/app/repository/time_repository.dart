import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:mobx_example/app/models/times.dart';

class TimeRepository{

 
  
  
  Future<List<Time>> getList(){
  
    List<Time> listTime = [
      new Time(nome: "Corinthians",ano: 1910,estadio: "Arena Corinthians"),
      new Time(nome: "Santos",ano: 1912,estadio: "Estádio Urbano Caldeira"),
      new Time(nome: "Palmeiras",ano: 1914,estadio: "Alianz Park"),  
      new Time(nome: "São Paulo",ano: 1930,estadio: "Estádio Cícero Pompeu de Toledo"),  
    ];

    return Future<List<Time>>
    .delayed(Duration(seconds:5),(){
      print("repository.time");
      return listTime;
    });
    
  }

    Future<List<Time>> getListPlayer(){
  
    List<Time> listJogador = [
      new Time(nome: "Ronaldinho",ano: 1910,estadio: "Arena Corinthians"),
      new Time(nome: "Neymar",ano: 1912,estadio: "Estádio Urbano Caldeira"),
      new Time(nome: "Edmundo",ano: 1914,estadio: "Alianz Park"),  
      new Time(nome: "Cacá",ano: 1930,estadio: "Estádio Cícero Pompeu de Toledo"),  
    ];

    return Future<List<Time>>
    .delayed(Duration(seconds:10),(){
      print("repository.player");
      return listJogador;
    });
    
  }

  Future<List<Time>> getListTorcedor(){
  
    List<Time> listJogador = [
      new Time(nome: "Gustavo",ano: 1910,estadio: "Arena Corinthians"),
      new Time(nome: "Gabricio",ano: 1912,estadio: "Estádio Urbano Caldeira"),
      new Time(nome: "Paulo",ano: 1914,estadio: "Alianz Park"),  
      new Time(nome: "Lucas",ano: 1930,estadio: "Estádio Cícero Pompeu de Toledo"),  
    ];

    return Future<List<Time>>
    .delayed(Duration(seconds:15),(){
      print("repository.torcedor");
      return listJogador;
    });
    
  }

   Future<List<Time>> getListSelecao(){
  
    List<Time> listJogador = [
      new Time(nome: "Brasil",ano: 1910,estadio: "Arena Corinthians"),
      new Time(nome: "Argentina",ano: 1912,estadio: "Estádio Urbano Caldeira"),
      new Time(nome: "Peru",ano: 1914,estadio: "Alianz Park"),  
      new Time(nome: "Bolivia",ano: 1930,estadio: "Estádio Cícero Pompeu de Toledo"),  
    ];

    return Future<List<Time>>
    .delayed(Duration(seconds:20),(){
      print("repository.selecao");
      return listJogador;
    });
    
  }


}