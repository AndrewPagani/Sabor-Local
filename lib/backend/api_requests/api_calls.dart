import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Auth Group Code

class AuthGroup {
  static String getBaseUrl() =>
      'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV';
  static Map<String, String> headers = {};
  static BuscaclienteCall buscaclienteCall = BuscaclienteCall();
  static TokenizacaoCall tokenizacaoCall = TokenizacaoCall();
  static CriarClienteAsaasCall criarClienteAsaasCall = CriarClienteAsaasCall();
  static CriarPagamentoCall criarPagamentoCall = CriarPagamentoCall();
}

class BuscaclienteCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'buscacliente',
      apiUrl: '${baseUrl}/busca_cliente',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.status''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
}

class TokenizacaoCall {
  Future<ApiCallResponse> call({
    String? nomeTitular = '',
    String? authtoken = '',
    String? numero = '',
    String? expMes = '',
    String? expAno = '',
    String? cvv = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nomeTitular": "${escapeStringForJson(nomeTitular)}",
  "authtoken": "${escapeStringForJson(authtoken)}",
  "numero": "${escapeStringForJson(numero)}",
  "expMes": "${escapeStringForJson(expMes)}",
  "expAno": "${escapeStringForJson(expAno)}",
  "cvv": "${escapeStringForJson(cvv)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tokenizacao',
      apiUrl: '${baseUrl}/tokenizacao',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarClienteAsaasCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarClienteAsaas',
      apiUrl: '${baseUrl}/criarclienteassas',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status.status''',
      ));
}

class CriarPagamentoCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    String? valor = '',
  }) async {
    final baseUrl = AuthGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}",
  "valor": "${escapeStringForJson(valor)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criarPagamento',
      apiUrl: '${baseUrl}/criarCobrancaCredito',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? status(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.status.status''',
      ));
  String? mensagem(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status.mensagem''',
      ));
}

/// End Auth Group Code

/// Start SaborLocal Group Code

class SaborLocalGroup {
  static String getBaseUrl() =>
      'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX';
  static Map<String, String> headers = {};
  static GetItemCall getItemCall = GetItemCall();
  static PostItemCall postItemCall = PostItemCall();
  static POSTpedidoCall pOSTpedidoCall = POSTpedidoCall();
  static DeleteItemCall deleteItemCall = DeleteItemCall();
  static GetCartaoCall getCartaoCall = GetCartaoCall();
  static GetPedidoCall getPedidoCall = GetPedidoCall();
  static GetEnderecoCall getEnderecoCall = GetEnderecoCall();
  static GetCepCall getCepCall = GetCepCall();
  static DeleteEnderecoCall deleteEnderecoCall = DeleteEnderecoCall();
  static TornarPadraoCall tornarPadraoCall = TornarPadraoCall();
}

class GetItemCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetItem',
      apiUrl: '${baseUrl}/item',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authotoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? pedidoid(dynamic response) => (getJsonField(
        response,
        r'''$[:].pedido_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? qtd(dynamic response) => (getJsonField(
        response,
        r'''$[:].qtd''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? valorunit(dynamic response) => (getJsonField(
        response,
        r'''$[:].valor_unit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? subtotal(dynamic response) => (getJsonField(
        response,
        r'''$[:].subtotal''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class PostItemCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    String? nomeProduto = '',
    String? qtd = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "qtd": "${escapeStringForJson(qtd)}",
  "authtoken": "${escapeStringForJson(authtoken)}",
  "nomeProduto": "${escapeStringForJson(nomeProduto)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PostItem',
      apiUrl: '${baseUrl}/item',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic carrinhoAtualizado(dynamic response) => getJsonField(
        response,
        r'''$.carrinhoAtualizado''',
      );
  dynamic quantidadeAtualizada(dynamic response) => getJsonField(
        response,
        r'''$.quantidadeAtualizada''',
      );
}

class POSTpedidoCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POSTpedido',
      apiUrl: '${baseUrl}/pedido',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? statement(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.statement''',
      ));
  int? pedidoid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pedido.id''',
      ));
}

class DeleteItemCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    String? nomeProduto = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}",
  "nomeProduto": "${escapeStringForJson(nomeProduto)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteItem',
      apiUrl: '${baseUrl}/deleteItem',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic carrinhoAtualizado(dynamic response) => getJsonField(
        response,
        r'''$.carrinhoAtualizado''',
      );
}

class GetCartaoCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCartao',
      apiUrl: '${baseUrl}/cartaotoknzd',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].token''',
      ));
  String? codigoCliente(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].codigoclienteassas''',
      ));
}

class GetPedidoCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPedido',
      apiUrl: '${baseUrl}/pedido',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].total''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].status_pedido_id''',
      ));
}

class GetEnderecoCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getEndereco',
      apiUrl: '${baseUrl}/endereco',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? endereco(dynamic response) => getJsonField(
        response,
        r'''$.endereco''',
        true,
      ) as List?;
  List<String>? log(dynamic response) => (getJsonField(
        response,
        r'''$.endereco[:].logradouro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? num(dynamic response) => (getJsonField(
        response,
        r'''$.endereco[:].numero''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? bairro(dynamic response) => (getJsonField(
        response,
        r'''$.endereco[:].bairro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? padrao(dynamic response) => (getJsonField(
        response,
        r'''$.endereco[:].padrao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.endereco[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetCepCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCep',
      apiUrl: '${baseUrl}/cep',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'authtoken': authtoken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cep''',
      ));
}

class DeleteEnderecoCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteEndereco',
      apiUrl: '${baseUrl}/deleteEndereco',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? enderecoAtt(dynamic response) => getJsonField(
        response,
        r'''$.enderecosAtualizado''',
        true,
      ) as List?;
}

class TornarPadraoCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    int? id,
  }) async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "authtoken": "${escapeStringForJson(authtoken)}",
  "id": ${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'tornarPadrao',
      apiUrl: '${baseUrl}/tornarPadrao',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? enderecoAtt(dynamic response) => getJsonField(
        response,
        r'''$.enderecoAtualizado''',
        true,
      ) as List?;
}

/// End SaborLocal Group Code

class ValidacepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'validacep',
      apiUrl: 'viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? loc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
}

class AddenderecoCall {
  static Future<ApiCallResponse> call({
    String? logradouro = '',
    String? numero = '',
    String? bairro = '',
    String? complemento,
    String? referencia,
    String? cep2 = '',
    String? cpf = '',
    String? authtoken = '',
  }) async {
    complemento ??= null;
    referencia ??= null;

    final ffApiRequestBody = '''
{
  "cep2": "${escapeStringForJson(cep2)}",
  "logradouro": "${escapeStringForJson(logradouro)}",
  "numero": "${escapeStringForJson(numero)}",
  "bairro": "${escapeStringForJson(bairro)}",
  "complemento": "${escapeStringForJson(complemento)}",
  "referencia": "${escapeStringForJson(referencia)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "authtoken": "${escapeStringForJson(authtoken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addendereco',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX/endereco',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic endereco(dynamic response) => getJsonField(
        response,
        r'''$.ENDERECO''',
      );
  static String? log(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ENDERECO.logradouro''',
      ));
  static String? num(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ENDERECO.numero''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ENDERECO.bairro''',
      ));
  static bool? padrao(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ENDERECO.padrao''',
      ));
  static int? cepid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ENDERECO.cep_id''',
      ));
  static List? enderecoAtt(dynamic response) => getJsonField(
        response,
        r'''$.enderecosAtualizado''',
        true,
      ) as List?;
}

class AddcepCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
    String? uf = '',
    String? cidade = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cep": "${escapeStringForJson(cep)}",
  "uf": "${escapeStringForJson(uf)}",
  "cidade": "${escapeStringForJson(cidade)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addcep',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX/cep',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cidade''',
      ));
  static int? addid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class AuthsignupCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? password = '',
    String? cpf = '',
    String? telefone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}",
  "cpf": "${escapeStringForJson(cpf)}",
  "telefone": "${escapeStringForJson(telefone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authsignup',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? tokencad(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class AuthloginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'authlogin',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? tokenlogin(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
}

class EnviacodigoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviacodigo',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV/enviar_codigo',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? coderro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class ValidarcodigoCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? codigo = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "codigo": "${escapeStringForJson(codigo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validarcodigo',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV/validar_codigo',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EditarsenhaCall {
  static Future<ApiCallResponse> call({
    String? password = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "password": "${escapeStringForJson(password)}",
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Editarsenha',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV/Esqueceu_a_senha',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerificaCadastroCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? cpf = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'verificaCadastro',
      apiUrl:
          'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX/verifica_cadastro',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'email': email,
        'CPF': cpf,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? errorType(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.payload''',
      ));
}

class ValidaemailCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'validaemail',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:ue7fMkeV/validaemail2',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? eRROEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
      ));
}

class BuscaCardapioCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'BuscaCardapio',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX/produto',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? filtros(dynamic response) => (getJsonField(
        response,
        r'''$[:].filtros''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ingredientes(dynamic response) => (getJsonField(
        response,
        r'''$[:].ingredientes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<bool>? precisaprod(dynamic response) => (getJsonField(
        response,
        r'''$[:].precisa_produzir''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List<double>? preco(dynamic response) => (getJsonField(
        response,
        r'''$[:].preco''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? qtddisp(dynamic response) => (getJsonField(
        response,
        r'''$[:].qtd_disp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
