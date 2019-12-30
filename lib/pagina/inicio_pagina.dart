import 'package:flutter/material.dart';
import 'package:mywhat/pagina/foto_pagina.dart';

import 'chat_pagina.dart';
import 'estado_page.dart';
import 'llamada_pagina.dart';

class InicioPagina extends StatefulWidget {
  InicioPagina({Key key}) : super(key: key);

  @override
  _InicioPaginaState createState() => _InicioPaginaState();
}

class _InicioPaginaState extends State<InicioPagina>
    with SingleTickerProviderStateMixin {
  TabController _tabCtr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabCtr = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _crearBarra(), body: _crearCuerpo());
  }

  _crearBarra() {
    return AppBar(
      title: Text('Mensajea'),
      elevation: 0.8,
      bottom: TabBar(
        controller: _tabCtr,
        indicatorColor: Colors.black,
        tabs: <Widget>[
          new Tab(icon: Icon(Icons.camera)),
          new Tab(text: "chats"),
          new Tab(text: "Status"),
          new Tab(text: "Llamadas"),
        ],
      ),
    );
  }

  _crearCuerpo() {

    return TabBarView(
      controller: _tabCtr,
      children: <Widget>[
        FotoPagina(),
        ChatPagina(),
        EstadoPagina(),
        LlamadaPagina(),

      ],
    );
  }
}
