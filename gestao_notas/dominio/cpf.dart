class CPF {
  late List<int> numerosCPF;
  //LATE GARANTE QUE SERÁ DADO UM VALOR A VARIAVEL ATÉ O FIM DO CÓDIGO,
  //PARA NÃO DAR ERRO DE VARIÁVEL NULA.

  CPF(String cpf) {
    eVazio(cpf);

    cpf = cpf.replaceAll(RegExp(r'\D'), '');
    //TRANSFORMA TODOS OS CARACTERES QUE NÃO FOREM NUMERO EM ''.

    numerosCPF = cpf.split('').map(int.parse).toList();
    //PERCORRE CPF SEPARANDO OS DIGITOS E TRANSFORMANTO EM UMA LISTA DE INT
    
    eOnzeNumeros();
    eNumerosDiferentes();
    eDigitosCorretos();
  }

  bool eVazio(cpf) {
    if (cpf == '') throw Exception('CPF não pode ser vazio');
    return true;
  }

  bool eOnzeNumeros() {
    if (numerosCPF.length != 11)
      throw Exception('CPF deve possuir 11 números!');
    return true;
  }

  bool eNumerosDiferentes() {
    return true;
  }

  bool eDigitosCorretos() {
    return true;
  }

  bool eUnico() {
    List<int> multNumeros = List<int>.filled(9, 0);

    for (int i = 1; i <= 9; i++) {
      int j = i - 1;
      multNumeros[j] = numerosCPF[j] * i;
    }

    int soma = 0;
    for (var valor in multNumeros) {
      soma += valor;
    }

    int sobra = soma % 11;
    for (int i = 0; i <= 10; i++) {
      if (sobra == i) {
        return true;
      }
    }

    return false;
  }
}
