import 'dart:io';

void main() {
  List<String> clientes = <String>[
    "João Silva",
    "Maria Oliveira",
    "Carlos Santos",
    "Ana Paula",
    "José Almeida",
    "Marcos Pereira",
    "Patrícia Souza",
    "Fernanda Costa",
    "Lucas Ribeiro",
    "Renata Machado",
    "Thiago Fernandes",
    "Camila Alves",
    "Pedro Carvalho",
    "Larissa Lima",
    "Ricardo Nunes",
    "Juliana Rocha",
    "André Gonçalves",
    "Letícia Martins",
    "Eduardo Barros",
    "Sofia Batista",
  ];

  // Lista de carros
  List<String> carros = <String>[
    "Fiat Uno",
    "Chevrolet Onix",
    "Hyundai HB20",
    "Toyota Corolla",
    "Honda Civic",
    "Volkswagen Gol",
    "Renault Kwid",
    "Ford Ka",
    "Jeep Compass",
    "Nissan Kicks",
    "Peugeot 208",
    "BMW Série 3",
    "Mercedes-Benz Classe C",
    "Audi A3",
    "Volvo XC60",
    "Chevrolet Tracker",
    "Fiat Toro",
    "Hyundai Creta",
    "Jeep Renegade",
    "Ford Ranger",
  ];

  menu(clientes, carros);
}

void menu(List<String> clientes, List<String> carros){
  print("");
  cabecalho();
  print("");

  String comando = getComando();

  switch(comando){
    case "1":
      registrarCliente(clientes);
      menu(clientes, carros);
    case "2":
      registrarCarros(carros);
      menu(clientes, carros);
    case "3":
    
      alugarCarro(clientes, carros);
      menu(clientes, carros);
    case "4":
      listarClientes(clientes);
      menu(clientes, carros);
    case "5":
      listarCarros(carros);      
      menu(clientes, carros);
    case "6":
      print("Até logo!!");
  }
}

String getComando(){
  print("Digite um comando: ");
  print("1- Registrar um cliente");
  print("2- Registrar um carro");
  print("3- Alugar um carro");
  print("4- Listar Clientes");
  print("5- Listar Carros");
  print("6- Sair");

  List<String> comandos = <String>["1", "2", "3", "4", "5", "6"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)){
    print("Opção invalida!");
    getComando();
  }

  return entrada!;
}

List<String> registrarCliente(List<String> clientes){
  print("");
  print("Informe o nome do Cliente: ");
  String? nome = "";
  nome = stdin.readLineSync();

  if (nome == null || nome.isEmpty){
    print("Não é possivel adicionar um cliente sem nome!");
    registrarCliente(clientes);
  }

  clientes.add(nome!);

  return clientes;
}

List<String> registrarCarros(List<String> carros){
  print("");
  print("Informe o nome do carro: ");
  String? nome = "";
  nome = stdin.readLineSync();

  if (nome == null || nome.isEmpty){
    print("Não é possivel adicionar um carro sem nome!");
    registrarCarros(carros);
  }

  carros.add(nome!);

  return carros;
}

void listarClientes(List<String> clientes){
  print("");
  for (var i = 0; i < clientes.length; i++){
    print("Cliente $i: ${clientes[i]}");
  }
  print("");
}

void listarCarros(List<String> carros){
  print("");
  for (var i = 0; i < carros.length; i++){
    print("Carro ${i + 1}: ${carros[i]}");
  }
  print("");
}

void alugarCarro(List<String> clientes, List<String> carros){
  print("");
  print("Nome do Cliente:");
  String? cliente = "";
  cliente = stdin.readLineSync();

  if (cliente == null || cliente.isEmpty){
    print("Não é possivel alugar um carro sem o nome do cliente!");
    alugarCarro(clientes, carros);
  }

  print("Nome do Carro:");
  String? carro = "";
  carro = stdin.readLineSync();

  if (carro == null || carro.isEmpty){
    print("Não é possivel alugar um carro sem o nome do carro!");
    alugarCarro(clientes, carros);
  }

  print("");
  print("Carro alugado com sucesso:");
  print("Cliente: $cliente");
  print("Carro: $carro");
}

void cabecalho(){
  print(" _______          _________ _______ _________ _______  _______  _______ ");
  print("(  ____ \|\     /|\__   __/(  ____ \\__   __/(  ____ \(  ___  )(  ____ )");
  print("| (    \/| )   ( |   ) (   | (    \/   ) (   | (    \/| (   ) || (    )|");
  print("| (_____ | | _ | |   | |   | (__       | |   | |      | (___) || (____)|");
  print("(_____  )| |( )| |   | |   |  __)      | |   | |      |  ___  ||     __)");
  print("      ) || || || |   | |   | (         | |   | |      | (   ) || (\ (   ");
  print("/\____) || () () |___) (___| )         | |   | (____/\| )   ( || ) \ \__");
  print("\_______)(_______)\_______/|/          )_(   (_______/|/     \||/   \__/");
  print("                                                                        ");
}