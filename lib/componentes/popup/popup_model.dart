import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'popup_widget.dart' show PopupWidget;
import 'package:flutter/material.dart';

class PopupModel extends FlutterFlowModel<PopupWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (POSTpedido)] action in carrinh widget.
  ApiCallResponse? postPedido;
  // Stores action output result for [Backend Call - API (PostItem)] action in carrinh widget.
  ApiCallResponse? postItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
