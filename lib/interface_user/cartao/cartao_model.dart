import '/flutter_flow/flutter_flow_util.dart';
import 'cartao_widget.dart' show CartaoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CartaoModel extends FlutterFlowModel<CartaoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nomecompleto widget.
  FocusNode? nomecompletoFocusNode1;
  TextEditingController? nomecompletoTextController1;
  String? Function(BuildContext, String?)? nomecompletoTextController1Validator;
  // State field(s) for nomecompleto widget.
  FocusNode? nomecompletoFocusNode2;
  TextEditingController? nomecompletoTextController2;
  late MaskTextInputFormatter nomecompletoMask2;
  String? Function(BuildContext, String?)? nomecompletoTextController2Validator;
  // State field(s) for nomecompleto widget.
  FocusNode? nomecompletoFocusNode3;
  TextEditingController? nomecompletoTextController3;
  late MaskTextInputFormatter nomecompletoMask3;
  String? Function(BuildContext, String?)? nomecompletoTextController3Validator;
  // State field(s) for nomecompleto widget.
  FocusNode? nomecompletoFocusNode4;
  TextEditingController? nomecompletoTextController4;
  String? Function(BuildContext, String?)? nomecompletoTextController4Validator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomecompletoFocusNode1?.dispose();
    nomecompletoTextController1?.dispose();

    nomecompletoFocusNode2?.dispose();
    nomecompletoTextController2?.dispose();

    nomecompletoFocusNode3?.dispose();
    nomecompletoTextController3?.dispose();

    nomecompletoFocusNode4?.dispose();
    nomecompletoTextController4?.dispose();
  }
}
