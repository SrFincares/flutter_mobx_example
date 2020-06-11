import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/app/models/times.dart';
import 'package:mobx_example/app/repository/time_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  TimeRepository repository;
  _HomeControllerBase(TimeRepository this.repository ){
      initialize();
       selecao = outListTime.asObservable();
  }

@action 
void initialize(){
 getList();
 getPlayers();
 getTorcedores();
 getSelecao();
}


@observable
bool load1 = false;
@action 
changeLoad(bool value) => load1 = value;


@observable
bool load2 = false;
@action 
changeLoad2(bool value) => load2 = value;


@observable
bool load3 = false;
@action 
changeLoad3(bool value) => load3 = value;

@observable
bool load4 = false;
@action 
changeLoad4(bool value) => load4 = value;

  
  ObservableFuture<List<Time>> times;
  getList(){
   times = repository.getList()
   .asObservable().whenComplete(() => changeLoad(true)).asObservable();
   print("controller.times");
  }

  ObservableFuture<List<Time>> players;
getPlayers(){
  players = repository.getListPlayer()
  .asObservable().whenComplete(() => changeLoad2(true)).asObservable();
  print("controller.players");
}

  ObservableFuture<List<Time>> torcedor;
getTorcedores(){
  torcedor = repository.getListTorcedor()
  .whenComplete(() => changeLoad3(true)).asObservable();
  print("controller.torcedor");
}

var listTime = BehaviorSubject<List<Time>>();
Sink<List<Time>> get inListTime => listTime.sink;
Stream<List<Time>> get outListTime => listTime.stream;

ObservableStream<List<Time>> selecao;
getSelecao(){
    print("controller.seleção");
    repository.getListSelecao()
    .then((value){
       inListTime.add(value);
        changeLoad4(true);
       });
} 

dispose() => listTime.close();

}
