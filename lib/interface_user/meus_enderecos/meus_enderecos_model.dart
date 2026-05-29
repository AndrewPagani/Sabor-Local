import '/componentes/enderecos/enderecos_widget.dart';
import '/componentes/task_bar/task_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meus_enderecos_widget.dart' show MeusEnderecosWidget;
import 'package:flutter/material.dart';

class MeusEnderecosModel extends FlutterFlowModel<MeusEnderecosWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for enderecos dynamic component.
  late FlutterFlowDynamicModels<EnderecosModel> enderecosModels;
  // Model for taskBar component.
  late TaskBarModel taskBarModel;

  @override
  void initState(BuildContext context) {
    enderecosModels = FlutterFlowDynamicModels(() => EnderecosModel());
    taskBarModel = createModel(context, () => TaskBarModel());
  }

  @override
  void dispose() {
    enderecosModels.dispose();
    taskBarModel.dispose();
  }
}
