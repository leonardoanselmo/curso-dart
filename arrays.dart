import 'dart:io';

main(){

  List<String> nome = [];

  for (var i = 0; i < 4; i++) {
    print("Digite um nome: ");
    String txtNome = stdin.readLineSync();    
    nome.add(txtNome);
  }
  print(nome);
  print(nome[2]);
  nome.removeAt(2);
  print(nome);

}