import "dart:io";

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;

  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print("=== DIGITE UM COMANDO ===");
    String? comando = stdin.readLineSync();
    if (comando == "finalizar") {
      print("=== PROGRAMA FINALIZADO ===");
      condicao = false;
    } else if (comando == "cadastrar") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("=== ESSE COMANDO NÃO EXISTE ===");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("=== Digite o seu Nome ===");
  cadastro["nome"] = stdin.readLineSync();

  print("=== Digite sua Idade");
  cadastro["idade"] = stdin.readLineSync();

  print("=== Digite sua Cidade ===");
  cadastro["cidade"] = stdin.readLineSync();

  print("=== Digite seu Estado");
  cadastro["estado"] = stdin.readLineSync();

  cadastros.add(cadastro);

}
