import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder:
        (context)  {
              print("=================printing screen=================");

              if(!controller.load1 )
                 return CircularProgressIndicator(backgroundColor: Colors.red,);

              if(!controller.load2 )
                 return CircularProgressIndicator(backgroundColor: Colors.green,);

              if(!controller.load3 )
                 return CircularProgressIndicator(backgroundColor: Colors.blue,);

              if(!controller.load4 )
                 return CircularProgressIndicator(backgroundColor: Colors.yellow,);
             
              if(controller.selecao.value == null)
                 return CircularProgressIndicator(backgroundColor: Colors.black,);

                 return ListView.builder(
                  itemCount:  controller.times.value.length,
                  itemBuilder: (_ ,index){
                        return Container(
                          child: Column(children: <Widget>[
                             Text(controller.times.value[index].nome),
                             Text(controller.times.value[index].ano.toString()),
                             Text(controller.times.value[index].estadio),
                             Text(controller.players.value.length > 0 ?
                               controller.players.value[index].nome: ""),
                             Text(controller.torcedor.value.length > 0 ?
                               controller.torcedor.value[index].nome: ""),
                             Text(controller.selecao.value.length > 0 ?
                               controller.selecao.value[index].nome: ""),
                             Divider() 

                            ],)
                        );
                });
              
        }

      )
    );
  }
}
