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
    var qtdItem = item['qtd'];

    if (precoItem != null) {
      double preco = double.tryParse(precoItem.toString()) ?? 0.0;
      int qtd = int.tryParse(qtdItem.toString()) ?? 1;

      total += (preco * qtd);
    }
  }

  return total;
}

List<dynamic> barraDePesquisa(
  List<dynamic> listaDeProdutos,
  String? textoDigitato,
) {
  if (listaDeProdutos == null) return [];

  if (textoDigitato == null ||
      textoDigitato.trim().isEmpty ||
      textoDigitato == 'null') {
    return listaDeProdutos;
  }

  final String termo = textoDigitato.toLowerCase().trim();

  return listaDeProdutos.where((item) {
    if (item is Map) {
      final String nomePrato = (item['nome'] ?? '').toString().toLowerCase();
      return nomePrato.contains(termo);
    }
    return false;
  }).toList();
}

String? verifyLength(
  String? numero,
  String? mes,
  String? ano,
  String? cvv,
) {
  final cleanNumero = numero?.replaceAll(RegExp(r'\D'), '') ?? '';
  final cleanMes = mes?.replaceAll(RegExp(r'\D'), '') ?? '';
  final cleanAno = ano?.replaceAll(RegExp(r'\D'), '') ?? '';
  final cleanCvv = cvv?.replaceAll(RegExp(r'\D'), '') ?? '';

  if (cleanNumero.length != 16) {
    return 'Número do cartão inválido. Deve conter exatamente 16 dígitos.';
  }

  if (cleanMes.length != 2) {
    return 'Mês inválido. Digite no formato MM (ex: 05).';
  }

  if (cleanAno.length != 4) {
    return 'Ano inválido. Digite no formato AAAA (ex: 2026).';
  }

  final anoInserido = int.tryParse(cleanAno);
  if (anoInserido != null && anoInserido < 2026) {
    return '42';
  }

  if (cleanCvv.length != 3) {
    return 'Código de segurança (CVV) inválido. Deve conter exatamente 3 dígitos.';
  }

  return '67';
}
