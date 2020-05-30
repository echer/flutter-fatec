import 'package:flutter/material.dart';
import 'package:tarefas_app/widgets/tarefa-item.dart';

class ListaPage extends StatelessWidget {
  const ListaPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          TarefaItem("Estudar linguagem C#", true),
          Divider(),
          TarefaItem("Estudar linguagem Dart", false),
          Divider(),
          TarefaItem("Finalizar o projeto do módulo do curso de CW do Prof. Dezani", true),
          Divider(),
          TarefaItem("Teste", false),
          Divider(),
        ],
      )),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/cadastro");
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
