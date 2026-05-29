import '/componentes/task_bar/task_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pedido_realizado_widget.dart' show PedidoRealizadoWidget;
import 'package:flutter/material.dart';

class PedidoRealizadoModel extends FlutterFlowModel<PedidoRealizadoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for taskBar component.
  late TaskBarModel taskBarModel;

  @override
  void initState(BuildContext context) {
    taskBarModel = createModel(context, () => TaskBarModel());
  }

  @override
  void dispose() {
    taskBarModel.dispose();
  }
}
