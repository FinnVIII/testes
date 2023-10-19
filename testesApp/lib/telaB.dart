import 'package:flutter/material.dart';
import 'dart:async';

class PageB extends StatefulWidget {
  const PageB({super.key});

  @override
  _PageBState createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  final _controller = StreamController<String>();

  @override
  void initState() {
    // Inicializa o StreamController<String>`
    _controller.stream.listen((data) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(data),
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                _controller.sink.add("Olá, página C!");
              },
              child: Text("Enviar mensagem"),
            ),
          ],
        ),
      ),
    );
  }
}
