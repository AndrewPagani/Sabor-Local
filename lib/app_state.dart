import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _modoNoturno = prefs.getBool('ff_modoNoturno') ?? _modoNoturno;
    });
    _safeInit(() {
      _foto = prefs.getString('ff_foto') ?? _foto;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _cardapiorstate = [];
  List<dynamic> get cardapiorstate => _cardapiorstate;
  set cardapiorstate(List<dynamic> value) {
    _cardapiorstate = value;
  }

  void addToCardapiorstate(dynamic value) {
    cardapiorstate.add(value);
  }

  void removeFromCardapiorstate(dynamic value) {
    cardapiorstate.remove(value);
  }

  void removeAtIndexFromCardapiorstate(int index) {
    cardapiorstate.removeAt(index);
  }

  void updateCardapiorstateAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    cardapiorstate[index] = updateFn(_cardapiorstate[index]);
  }

  void insertAtIndexInCardapiorstate(int index, dynamic value) {
    cardapiorstate.insert(index, value);
  }

  String _authtoken = '';
  String get authtoken => _authtoken;
  set authtoken(String value) {
    _authtoken = value;
  }

  String _nomeUser = '';
  String get nomeUser => _nomeUser;
  set nomeUser(String value) {
    _nomeUser = value;
  }

  dynamic _carrinhoState;
  dynamic get carrinhoState => _carrinhoState;
  set carrinhoState(dynamic value) {
    _carrinhoState = value;
  }

  String _pedidoId = '';
  String get pedidoId => _pedidoId;
  set pedidoId(String value) {
    _pedidoId = value;
  }

  List<dynamic> _enderecoState = [];
  List<dynamic> get enderecoState => _enderecoState;
  set enderecoState(List<dynamic> value) {
    _enderecoState = value;
  }

  void addToEnderecoState(dynamic value) {
    enderecoState.add(value);
  }

  void removeFromEnderecoState(dynamic value) {
    enderecoState.remove(value);
  }

  void removeAtIndexFromEnderecoState(int index) {
    enderecoState.removeAt(index);
  }

  void updateEnderecoStateAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    enderecoState[index] = updateFn(_enderecoState[index]);
  }

  void insertAtIndexInEnderecoState(int index, dynamic value) {
    enderecoState.insert(index, value);
  }

  bool _modoNoturno = false;
  bool get modoNoturno => _modoNoturno;
  set modoNoturno(bool value) {
    _modoNoturno = value;
    prefs.setBool('ff_modoNoturno', value);
  }

  List<int> _qtd = [];
  List<int> get qtd => _qtd;
  set qtd(List<int> value) {
    _qtd = value;
  }

  void addToQtd(int value) {
    qtd.add(value);
  }

  void removeFromQtd(int value) {
    qtd.remove(value);
  }

  void removeAtIndexFromQtd(int index) {
    qtd.removeAt(index);
  }

  void updateQtdAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    qtd[index] = updateFn(_qtd[index]);
  }

  void insertAtIndexInQtd(int index, int value) {
    qtd.insert(index, value);
  }

  List<dynamic> _Cartao = [];
  List<dynamic> get Cartao => _Cartao;
  set Cartao(List<dynamic> value) {
    _Cartao = value;
  }

  void addToCartao(dynamic value) {
    Cartao.add(value);
  }

  void removeFromCartao(dynamic value) {
    Cartao.remove(value);
  }

  void removeAtIndexFromCartao(int index) {
    Cartao.removeAt(index);
  }

  void updateCartaoAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    Cartao[index] = updateFn(_Cartao[index]);
  }

  void insertAtIndexInCartao(int index, dynamic value) {
    Cartao.insert(index, value);
  }

  String _foto = '';
  String get foto => _foto;
  set foto(String value) {
    _foto = value;
    prefs.setString('ff_foto', value);
  }

  final _njrManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> njr({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _njrManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNjrCache() => _njrManager.clear();
  void clearNjrCacheKey(String? uniqueKey) =>
      _njrManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
