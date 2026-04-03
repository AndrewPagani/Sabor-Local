import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'codigo_email_copy_widget.dart' show CodigoEmailCopyWidget;
import 'package:flutter/material.dart';

class CodigoEmailCopyModel extends FlutterFlowModel<CodigoEmailCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
