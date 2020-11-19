void main() {
  String mensaje = saludar2(nombre: 'Fernando', texto: 'Hola,');
  ejemplo("Estoy usando dart");
  print(mensaje);
}

String saludar({String texto, String nombre}) {
//   print('Hola');
  return '$texto $nombre';
}

void ejemplo(String texto) {
  print(texto);
}

String saludar2({String texto, String nombre}) => '$texto $nombre';
