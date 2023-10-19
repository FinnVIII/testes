import 'package:flutter/material.dart';
import 'package:testes/telaB.dart';
import 'package:testes/telaC.dart';

class TelaA extends StatefulWidget {
  const TelaA({super.key});

  @override
  State<TelaA> createState() => _TelaAState();
}

class _TelaAState extends State<TelaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 1,
          child: PageView(
            children: [PageB()],
          ),
        ),
        Expanded(
          flex: 1,
          child: PageView(
            children: [PageC()],
          ),
        ),
      ]),
    );
  }
}
