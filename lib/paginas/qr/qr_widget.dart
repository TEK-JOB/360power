import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'qr_model.dart';
export 'qr_model.dart';

class QrWidget extends StatefulWidget {
  const QrWidget({
    super.key,
    required this.tipo,
    required this.ponto,
  });

  final String? tipo;
  final DocumentReference? ponto;

  @override
  State<QrWidget> createState() => _QrWidgetState();
}

class _QrWidgetState extends State<QrWidget> with TickerProviderStateMixin {
  late QrModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.349, 0),
            end: Offset(0, 0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Qr',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 100.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 12.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50.0),
                                  bottomRight: Radius.circular(200.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 400.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFF6D800),
                                      Color(0xFFF29200)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(1.0, 0.0),
                                    end: AlignmentDirectional(-1.0, 0),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50.0),
                                    bottomRight: Radius.circular(200.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                alignment: AlignmentDirectional(0.0, -1.0),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 24.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 200.0,
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0.0, -1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? 'assets/images/3a9k2_3.png'
                                      : 'assets/images/fijek_4.png',
                                  width: MediaQuery.sizeOf(context).width * 0.7,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.4,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.chevron_left,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 24.0),
                          child: Text(
                            'Cadastro de ${widget!.tipo}',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 16.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Container(
                            width: 320.0,
                            height: 320.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF8B400),
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await launchURL(
                                    'https://power360.flutterflow.app/Cadastro?tp=${widget!.tipo}&de=${widget!.ponto?.id}');
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BarcodeWidget(
                                    data:
                                        'https://power360.flutterflow.app/Cadastro?tp=${widget!.tipo}&de=${widget!.ponto?.id}',
                                    barcode: Barcode.qrCode(),
                                    width: 300.0,
                                    height: 300.0,
                                    color: Colors.black,
                                    backgroundColor: Color(0xFFF8B400),
                                    errorBuilder: (_context, _error) =>
                                        SizedBox(
                                      width: 300.0,
                                      height: 300.0,
                                    ),
                                    drawText: false,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
