import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
