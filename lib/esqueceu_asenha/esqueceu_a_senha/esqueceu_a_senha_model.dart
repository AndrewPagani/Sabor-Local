import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'esqueceu_a_senha_widget.dart' show EsqueceuASenhaWidget;
import 'package:flutter/material.dart';

class EsqueceuASenhaModel extends FlutterFlowModel<EsqueceuASenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
