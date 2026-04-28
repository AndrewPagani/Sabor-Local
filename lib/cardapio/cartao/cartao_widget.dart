import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cartao_model.dart';
export 'cartao_model.dart';

class CartaoWidget extends StatefulWidget {
  const CartaoWidget({super.key});

  static String routeName = 'cartao';
  static String routePath = '/cartao';

  @override
  State<CartaoWidget> createState() => _CartaoWidgetState();
}

class _CartaoWidgetState extends State<CartaoWidget> {
  late CartaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartaoModel());
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
