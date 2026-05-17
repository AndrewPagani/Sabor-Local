// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrecoStruct extends BaseStruct {
  PrecoStruct({
    int? preco,
  }) : _preco = preco;

  // "preco" field.
  int? _preco;
  int get preco => _preco ?? 0;
  set preco(int? val) => _preco = val;

  void incrementPreco(int amount) => preco = preco + amount;

  bool hasPreco() => _preco != null;

  static PrecoStruct fromMap(Map<String, dynamic> data) => PrecoStruct(
        preco: castToType<int>(data['preco']),
      );

  static PrecoStruct? maybeFromMap(dynamic data) =>
      data is Map ? PrecoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'preco': _preco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'preco': serializeParam(
          _preco,
          ParamType.int,
        ),
      }.withoutNulls;

  static PrecoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PrecoStruct(
        preco: deserializeParam(
          data['preco'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PrecoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PrecoStruct && preco == other.preco;
  }

  @override
  int get hashCode => const ListEquality().hash([preco]);
}

PrecoStruct createPrecoStruct({
  int? preco,
}) =>
    PrecoStruct(
      preco: preco,
    );
