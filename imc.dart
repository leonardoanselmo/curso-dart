import 'dart:io';

main(){
  calculoImc();
}

calculoImc(){
  
  print("Digite seu peso: ");
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso);

  print("Digite sua Altura");
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura);

  var calcImc = peso / (altura * altura);

  print(calcImc);
  imprimirResultado(calcImc);
  
}

imprimirResultado(calcImc){

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