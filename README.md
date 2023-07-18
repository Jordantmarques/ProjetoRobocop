# Resumo ProjetoRobocop
Projeto de aplicação mobile com conexão com o Firebase fazendo uso de Flutter único.

# Projeto Robocop
Este é um projeto simples em Flutter que permite ao usuário inserir dados relacionados a disciplinas e seus respectivos detalhes, como código, nome do professor, notas de provas e trabalho. Os dados inseridos pelo usuário são salvos no banco de dados Firebase em tempo real usando o pacote firebase_database.
Este projeto se encontra em um arquivo editado na pasta: trabalho/lib/main.Dart

# Pré-requisitos
Antes de executar este aplicativo, certifique-se de ter o Flutter configurado em seu ambiente de desenvolvimento. Além disso, você precisará criar um projeto no "Firebase Console" e configurá-lo corretamente para que o aplicativo possa salvar os dados no banco de dados Firebase.

# Configuração do Firebase
1. Crie um projeto no Firebase Console.
2. Adicione um aplicativo Android ou iOS ao seu projeto Firebase, seguindo as instruções do assistente de configuração.
3. Faça o download do arquivo de configuração do Firebase (google-services.json para Android ou GoogleService-Info.plist para iOS) e coloque-o nos diretórios apropriados no seu projeto Flutter (android/app para Android ou ios/Runner para iOS).
4. No arquivo pubspec.yaml, adicione as dependências necessárias do Firebase:

    dependencies:
        flutter:
            sdk: flutter
        firebase_core: ^1.0.0
        firebase_database: ^7.1.0

5. Execute o comando 'flutter pub get' para baixar e instalar as dependências do projeto.

# Executando o App
Após seguir as etapas de configuração do Firebase, você pode executar o aplicativo Flutter em um emulador ou dispositivo real. Certifique-se de ter um dispositivo conectado ou um emulador configurado antes de executar o app.

O app exibirá uma tela com campos para inserir os dados da disciplina. Preencha os campos conforme desejado e clique no botão "Salvar Dados" para salvar os dados no banco de dados Firebase.

Os dados serão salvos no caminho /disciplinas no banco de dados. Cada registro de disciplina terá campos como: "disciplina", "codigo", "nomeProf", "prova1", "prova2" e "trabalho".


