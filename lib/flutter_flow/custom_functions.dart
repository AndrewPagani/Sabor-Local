import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int? verifyCPF(String? textoCPF) {
  return textoCPF?.length ?? 0;
}

bool validarEmail(String? textoEmail) {
  if (textoEmail == null || textoEmail.isEmpty) {
    return false;
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(textoEmail);
}

bool? validarCPF(String? cpfDigitado) {
  if (cpfDigitado == null || cpfDigitado.isEmpty) {
    return false;
  }

  // Limpa o campo
  String cpf = cpfDigitado.replaceAll(RegExp(r'[^0-9]'), '');

  // Verifica se sobraram exatamente 11 números
  if (cpf.length != 11) {
    return false;
  }

  // Bloqueia sequências repetidas
  if (RegExp(r'^(\d)\1{10}$').hasMatch(cpf)) {
    return false;
  }

  // CÁLCULO DO PRIMEIRO DÍGITO
  int soma = 0;
  for (int i = 0; i < 9; i++) {
    soma += int.parse(cpf[i]) * (10 - i);
  }
  int resto = (soma * 10) % 11;
  if (resto == 10 || resto == 11) resto = 0;

  if (resto != int.parse(cpf[9])) {
    return false;
  }

  // CÁLCULO DO SEGUNDO DÍGITO
  soma = 0;
  for (int i = 0; i < 10; i++) {
    soma += int.parse(cpf[i]) * (11 - i);
  }
  resto = (soma * 10) % 11;
  if (resto == 10 || resto == 11) resto = 0;

  if (resto != int.parse(cpf[10])) {
    return false;
  }

  return true;
}

String? formatarParaReal(double? valor) {
  // Se o valor for nulo, retorna um padrão seguro
  if (valor == null) {
    return 'R\$ 0,00';
  }

  // Converte o valor para String com 2 casas decimais e substitui o ponto por vírgula
  String valorFormatado = valor.toStringAsFixed(2).replaceAll('.', ',');

  // Retorna o valor formatado com o cifrão escapado corretamente
  return 'R\$ $valorFormatado';
}

String? obterPrimeiroNome(String? nomeUser) {
  if (nomeUser == null || nomeUser.trim().isEmpty) {
    return 'Usuário';
  }
  List<String> partesDoNome = nomeUser.trim().split(' ');

  return partesDoNome.first;
}

double somaTotal(List<dynamic> precoTotal) {
  if (precoTotal == null || precoTotal.isEmpty) {
    return 0.0;
  }

  double total = 0.0;
  for (var item in precoTotal) {
    var precoItem = item['preco'];

    // Mude 'quantidade' para o nome exato do campo do carrinho (ex: 'qtd', 'count')
    var qtdItem = item['quantidade'];

    if (precoItem != null) {
      double preco = double.tryParse(precoItem.toString()) ?? 0.0;
      int quantidade = int.tryParse(qtdItem.toString()) ?? 1;

      total += (preco * quantidade);
    }
  }

  return total;
}

List<dynamic> barraDePesquisa(
  List<dynamic> listaDeProdutos,
  String? textoDigitato,
) {
  if (listaDeProdutos == null) return [];

  if (textoDigitato == null || textoDigitato.isEmpty) {
    return listaDeProdutos;
  }

  final String termo = textoDigitato.toLowerCase();

  return listaDeProdutos.where((item) {
    if (item is Map) {
      // Ajuste 'nome' se na sua API a chave do prato for diferente
      final String nomePrato = (item['nome'] ?? '').toString().toLowerCase();
      return nomePrato.contains(termo);
    }
    return false;
  }).toList();
}
