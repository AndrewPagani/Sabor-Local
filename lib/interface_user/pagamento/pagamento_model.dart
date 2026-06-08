import '/backend/api_requests/api_calls.dart';
import '/componentes/enderecos_copy/enderecos_copy_widget.dart';
import '/componentes/task_bar/task_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  Local state fields for this page.

  DateTime? momentoClique;

  ///  State fields for stateful widgets in this page.

  // Model for enderecosCopy component.
  late EnderecosCopyModel enderecosCopyModel;
  // State field(s) for debito widget.
  bool? debitoValue;
  // State field(s) for pix widget.
  bool? pixValue;
  // State field(s) for credito widget.
  bool? creditoValue;
  // State field(s) for dwallet widget.
  bool? dwalletValue;
  // Stores action output result for [Backend Call - API (criarPagamento)] action in Button widget.
  ApiCallResponse? criarPedido;
  // Model for taskBar component.
  late TaskBarModel taskBarModel;

  @override
  void initState(BuildContext context) {
    enderecosCopyModel = createModel(context, () => EnderecosCopyModel());
    taskBarModel = createModel(context, () => TaskBarModel());
  }

  @override
  void dispose() {
    enderecosCopyModel.dispose();
    taskBarModel.dispose();
  }
}
