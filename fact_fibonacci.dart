import 'dart:io';

int fibonacci(int a) {
  int x = 0, y = 1, z;
  for (var i = 0; i < (a - 1); i++) {
    print(x);
    z = x + y;
    x = y;
    y = z;
  }
  return x;
}

int factorial(int a) {
  int fact = 1;
  for (var i = 0; i < a; i++) {
    fact = fact * (i + 1);
  }
  return fact;
}

void main(List<String> arguments) {
  int opc, x, y;
  do {
    print('Seleccione una opcion\n');
    print("1)Fibonacci");
    print("2)Factorial");
    print("3)Salir\n");
    opc = int.parse(stdin.readLineSync()!);
    if (opc == 1) {
      print("ingrese el numero limite de la serie");
      x = int.parse(stdin.readLineSync()!);
      print("");
      print(fibonacci(x));
    }

    if (opc == 2) {
      print("ingrese valor para calcular su factorial\n");
      y = int.parse(stdin.readLineSync()!);
      print("");
      print(factorial(y));
    }
  } while (opc != 3);
}
