import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String disciplina = '', codigo = '', nomeProf = '';
    String prova1 = '', prova2 = '', trabalho = '';
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Projeto Robocop")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Insira seus dados',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Disciplina',
                ),
                onChanged: (text) {
                  disciplina = text;
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Código da disciplina',
                ),
                onChanged: (text) {
                  codigo = text;
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Nome do Professor',
                ),
                onChanged: (text) {
                  nomeProf = text;
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Prova 1',
                ),
                onChanged: (text) {
                  prova1 = text;
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Prova 2',
                ),
                onChanged: (text) {
                  prova2 = text;
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Trabalho',
                ),
                onChanged: (text) {
                  trabalho = text;
                },
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('salvar dados'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
