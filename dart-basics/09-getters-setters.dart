void main() {
  final cuadrado = new Cuadrado();
  cuadrado.lado = 6;
  print(cuadrado.lado);

  // cuadrado.lado = 10;

  // print(cuadrado);
  // print('área: ${cuadrado.area}');
}

class Cuadrado {
  int _lado;

  get lado => _lado;

  set lado(int l) {
    _lado = l;
  }
}
