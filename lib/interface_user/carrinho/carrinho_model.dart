import '/components/popupcardapio_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for popupcardapio dynamic component.
  late FlutterFlowDynamicModels<PopupcardapioModel> popupcardapioModels;

  @override
  void initState(BuildContext context) {
    popupcardapioModels = FlutterFlowDynamicModels(() => PopupcardapioModel());
  }

  @override
  void dispose() {
    popupcardapioModels.dispose();
  }
}
