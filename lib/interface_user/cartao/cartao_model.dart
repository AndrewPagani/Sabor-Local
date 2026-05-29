import '/backend/api_requests/api_calls.dart';
import '/componentes/task_bar/task_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cartao_widget.dart' show CartaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CartaoModel extends FlutterFlowModel<CartaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  late MaskTextInputFormatter numeroMask;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for MM widget.
  FocusNode? mmFocusNode;
  TextEditingController? mmTextController;
  String? Function(BuildContext, String?)? mmTextControllerValidator;
  // State field(s) for AAAA widget.
  FocusNode? aaaaFocusNode;
  TextEditingController? aaaaTextController;
  String? Function(BuildContext, String?)? aaaaTextControllerValidator;
  // State field(s) for CVC widget.
  FocusNode? cvcFocusNode;
  TextEditingController? cvcTextController;
  String? Function(BuildContext, String?)? cvcTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (criarClienteAsaas)] action in salvarCartao widget.
  ApiCallResponse? apiResult9sv;
  // Stores action output result for [Backend Call - API (tokenizacao)] action in salvarCartao widget.
  ApiCallResponse? apiResultd7d;
  // Model for taskBar component.
  late TaskBarModel taskBarModel;

  @override
  void initState(BuildContext context) {
    taskBarModel = createModel(context, () => TaskBarModel());
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    mmFocusNode?.dispose();
    mmTextController?.dispose();

    aaaaFocusNode?.dispose();
    aaaaTextController?.dispose();

    cvcFocusNode?.dispose();
    cvcTextController?.dispose();

    taskBarModel.dispose();
  }
}
