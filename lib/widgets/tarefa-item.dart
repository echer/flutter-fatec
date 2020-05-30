import 'package:flutter/material.dart';

class TarefaItem extends StatelessWidget {
  
  final String nome;
  final bool concluida;

  TarefaItem(this.nome, this.concluida);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        nome,
        style: TextStyle(fontWeight: FontWeight.normal),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(concluida ? "concluida":"aberta"),
      trailing: concluida ? Icon(
        Icons.check,
        color: Colors.green,
        size: 30,
      ) : SizedBox(),
    );
  }
}
