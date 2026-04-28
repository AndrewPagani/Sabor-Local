import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cardapio_model.dart';
export 'cardapio_model.dart';

class CardapioWidget extends StatefulWidget {
  const CardapioWidget({super.key});

  static String routeName = 'Cardapio';
  static String routePath = '/cardapio';

  @override
  State<CardapioWidget> createState() => _CardapioWidgetState();
}

class _CardapioWidgetState extends State<CardapioWidget> {
  late CardapioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardapioModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      ),
    );
  }
}
