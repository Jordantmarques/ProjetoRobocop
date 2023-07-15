import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

String disciplina = '',
       codigo = '',
       nomeProf = '',
       prova1 = '',
       prova2 = '',
       trabalho = '';

void main() {
  void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

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
                decoration: InputDecoration(
                  labelText: 'Nome do Professor',
                ),
                onChanged: (text) {
                  nomeProf = text;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Prova 1',
                ),
                onChanged: (text) {
                  prova1 = text;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Prova 2',
                ),
                onChanged: (text) {
                  prova2 = text;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Trabalho',
                ),
                onChanged: (text) {
                  trabalho = text;
                },
              ),
              ElevatedButton(
               onPressed: () {
               // Enviar os dados para o Firestore
               FirebaseFirestore.instance.collection('dados').add({
                 'disciplina': disciplina,
                 'codigo': codigo,
                 'nomeProf': nomeProf,
                 'prova1': prova1,
                 'prova2': prova2,
                 'trabalho': trabalho,
               });
               // Limpar os campos após salvar
               disciplina = '';
               codigo = '';
               nomeProf = '';
               prova1 = '';
               prova2 = '';
               trabalho = '';
              ,
              hild: Text('salvar dados'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
