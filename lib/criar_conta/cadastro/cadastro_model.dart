import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_widget.dart' show CadastroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroModel extends FlutterFlowModel<CadastroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomecompleto widget.
  FocusNode? nomecompletoFocusNode;
  TextEditingController? nomecompletoTextController;
  String? Function(BuildContext, String?)? nomecompletoTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for CPF widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  late MaskTextInputFormatter telefoneMask;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // Stores action output result for [Backend Call - API (verificaCadastro)] action in Continuar widget.
  ApiCallResponse? apiResultm7y;
  // Stores action output result for [Backend Call - API (enviacodigo)] action in Continuar widget.
  ApiCallResponse? enviacordigoOP;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    nomecompletoFocusNode?.dispose();
    nomecompletoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
  }
}
