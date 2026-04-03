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
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.response.status''',
      ));
}

/// End Auth Group Code

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
  "referencia": "${escapeStringForJson(referencia)}"
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

class CaduserCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "nome": "${escapeStringForJson(nome)}",
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'caduser',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX/user',
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

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.nome''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? pass(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  static String? erro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.code''',
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

class CadclienteCall {
  static Future<ApiCallResponse> call({
    String? cpf = '',
    String? celular = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cpf": "${escapeStringForJson(cpf)}",
  "celular": "${escapeStringForJson(celular)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'cadcliente',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:UXPL7lyX/cliente',
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

  static String? cpf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cpf''',
      ));
  static String? cell(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.celular''',
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
      cache: false,
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
