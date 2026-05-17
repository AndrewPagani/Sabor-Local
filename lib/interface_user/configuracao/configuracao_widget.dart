import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'configuracao_model.dart';
export 'configuracao_model.dart';

class ConfiguracaoWidget extends StatefulWidget {
  const ConfiguracaoWidget({super.key});

  static String routeName = 'Configuracao';
  static String routePath = '/configuracao';

  @override
  State<ConfiguracaoWidget> createState() => _ConfiguracaoWidgetState();
}

class _ConfiguracaoWidgetState extends State<ConfiguracaoWidget> {
  late ConfiguracaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracaoModel());
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
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Gemini_Generated_Image_.png',
                width: 402.2,
                height: 853.1,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              100.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Configuração',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Colors.black,
                                  fontSize: 27.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.19, -0.63),
              child: Container(
                width: 288.9,
                height: 27.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFEFE),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'Preferências da Conta',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.17, -0.49),
              child: Container(
                width: 288.9,
                height: 27.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'Endereços Salvos',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.17, -0.37),
              child: Container(
                width: 288.9,
                height: 27.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFBFBFB),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(70.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'Cartões Salvos',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.15, -0.25),
              child: Container(
                width: 288.9,
                height: 27.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFBFB),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'Segurança e Privacidade',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.15, -0.13),
              child: Container(
                width: 288.9,
                height: 27.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(75.0, 5.0, 0.0, 0.0),
                  child: Text(
                    'Suporte e FAQ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: Colors.black,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                width: 422.0,
                height: 58.23,
                decoration: BoxDecoration(
                  color: Color(0xFF0B5A37),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40.0,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(55.0, 0.0, 0.0, 0.0),
                      child: FaIcon(
                        FontAwesomeIcons.cog,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
