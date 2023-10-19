import 'package:flutter/material.dart';
import 'package:testes/telaB.dart';

class PageC extends StatefulWidget {
  @override
  _PageCState createState() => _PageCState();
}

class _PageCState extends State<PageC> {
  @override
  Widget build(BuildContext context) {
    final controller = PageB.controller;

    // Adiciona o StreamController<String>` da página B ao fluxo na página C
    controller.stream.listen((data) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(data),
      ));
    });

    return Scaffold(
      body: Center(
        child: Text("Página C"),
      ),
    );
  }
}
