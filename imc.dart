import 'dart:io';

main(){
  calculoImc();
}

calculoImc(){

  print("Digite seu peso: ");
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print("Digite sua Altura");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);

  double calcImc = peso / (altura * altura);

  print(calcImc);
  imprimirResultado(calcImc);
  
}

imprimirResultado(double calcImc){

  if (calcImc < 18) {
    print("Abaixo do peso");
  } else if (calcImc > 18.5 && calcImc < 24.9) {
    print("Peso Normal");
  } else if(calcImc > 25 && calcImc < 29.9){
    print("Sobrepeso");
  } else if (calcImc > 30 && calcImc < 34.9) {
    print("Obesidade grau 1");
  } else if (calcImc > 35 && calcImc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }

}