import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

String disciplina = '',
    codigo = '',
    nomeAluno = '',
    prova1 = '',
    prova2 = '',
    trabalho = '';

void main() async {
// Inicializar o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  // Executar o aplicativo Flutter
  runApp(MyApp());
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
          title: const Center(child: Text("Projeto Robocop")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Insira seus dados',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Disciplina',
                ),
                onChanged: (text) {
                  disciplina = text;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Código da disciplina',
                ),
                onChanged: (text) {
                  codigo = text;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nome do Aluno',
                ),
                onChanged: (text) {
                  nomeAluno = text;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Prova 1',
                ),
                onChanged: (text) {
                  prova1 = text;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Prova 2',
                ),
                onChanged: (text) {
                  prova2 = text;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Trabalho',
                ),
                onChanged: (text) {
                  trabalho = text;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  DatabaseReference databaseRef =
                      FirebaseDatabase.instance.ref();
                  databaseRef.child('disciplinas').push().set({
                    'disciplina': disciplina,
                    'codigo': codigo,
                    'nomeAluno': nomeAluno,
                    'prova1': prova1,
                    'prova2': prova2,
                    'trabalho': trabalho,
                  }).then((value) {
                    // O código aqui será executado quando os dados forem gravados com sucesso
                    print('Dados gravados no banco de dados com sucesso!');
                   }).catchError((error) {
                    // O código aqui será executado se ocorrer um erro ao gravar os dados
                    print('Erro ao gravar os dados no banco de dados: $error');
                  });
                },
                child: const Text('salvar dados'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}