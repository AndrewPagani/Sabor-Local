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
}

class GetItemCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = SaborLocalGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetItem',
      apiUrl: '${baseUrl}/item',
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
  "cpf": "${escapeStringForJson(cpf)}"
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

  static String? log(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? num(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
  static String? com(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  static String? bai(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? ref(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.referencia''',
      ));
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
