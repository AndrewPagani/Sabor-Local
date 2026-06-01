import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selecione_cartao_widget.dart' show SelecioneCartaoWidget;
import 'package:flutter/material.dart';

class SelecioneCartaoModel extends FlutterFlowModel<SelecioneCartaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap = {};
  List<dynamic> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Stores action output result for [Backend Call - API (deleteEndereco)] action in Icon widget.
  ApiCallResponse? apiResulty6b;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
