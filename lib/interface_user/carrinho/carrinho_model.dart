import '/components/popupccarrinho_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for popupccarrinho dynamic component.
  late FlutterFlowDynamicModels<PopupccarrinhoModel> popupccarrinhoModels;

  @override
  void initState(BuildContext context) {
    popupccarrinhoModels =
        FlutterFlowDynamicModels(() => PopupccarrinhoModel());
  }

  @override
  void dispose() {
    popupccarrinhoModels.dispose();
  }
}
