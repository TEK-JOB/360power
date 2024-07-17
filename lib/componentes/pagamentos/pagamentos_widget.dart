import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componentes/corrida/corrida_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagamentos_model.dart';
export 'pagamentos_model.dart';

class PagamentosWidget extends StatefulWidget {
  const PagamentosWidget({super.key});

  @override
  State<PagamentosWidget> createState() => _PagamentosWidgetState();
}

class _PagamentosWidgetState extends State<PagamentosWidget>
    with TickerProviderStateMixin {
  late PagamentosModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagamentosModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(50.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 450.0,
            maxHeight: 700.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x1A000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Pagar hoje',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 0.0),
                              child: Text(
                                'Lista das faturas a pagar pro comercio',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation']!),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 400.0,
                            decoration: BoxDecoration(),
                            child: StreamBuilder<List<CorridasRecord>>(
                              stream: queryCorridasRecord(
                                queryBuilder: (corridasRecord) => corridasRecord
                                    .where(
                                      'Motoboy',
                                      isEqualTo: currentUserReference,
                                    )
                                    .where(
                                      'Pago',
                                      isEqualTo: false,
                                    )
                                    .orderBy('DisponivelEm', descending: true),
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          Color(0xFFF29200),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<CorridasRecord> columnCorridasRecordList =
                                    snapshot.data!;

                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnCorridasRecordList.length,
                                        (columnIndex) {
                                      final columnCorridasRecord =
                                          columnCorridasRecordList[columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 4.0, 8.0, 4.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Builder(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: CorridaWidget(
                                                            parametCorrida:
                                                                columnCorridasRecord,
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 4.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: 350.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 6.0,
                                                            color: Color(
                                                                0x4B1A1F24),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8.0),
                                                            child: StreamBuilder<
                                                                ComerciosRecord>(
                                                              stream: ComerciosRecord
                                                                  .getDocument(
                                                                      columnCorridasRecord
                                                                          .comercio!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          Color(
                                                                              0xFFF29200),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }

                                                                final imageComerciosRecord =
                                                                    snapshot
                                                                        .data!;

                                                                return ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      imageComerciosRecord
                                                                          .logo,
                                                                      'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/sem%20logo2.png?alt=media&token=b0fab6b5-01c2-4681-bf51-f2989da1ad72',
                                                                    ),
                                                                    width: 45.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child:
                                                                  AutoSizeText(
                                                                formatNumber(
                                                                  columnCorridasRecord
                                                                      .valorProduto,
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .commaDecimal,
                                                                  currency:
                                                                      'R\$',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                maxLines: 1,
                                                                minFontSize:
                                                                    1.0,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child:
                                                                  AutoSizeText(
                                                                '${dateTimeFormat(
                                                                  'd/M',
                                                                  columnCorridasRecord
                                                                      .disponivelEm,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                )},  ${dateTimeFormat(
                                                                  'jms',
                                                                  columnCorridasRecord
                                                                      .disponivelEm,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                )}',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                maxLines: 1,
                                                                minFontSize:
                                                                    1.0,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                var confirmDialogResponse =
                                                                    await showDialog<
                                                                            bool>(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              title: Text('Receber'),
                                                                              content: Text('Você está marcando essa corrida como já recebida, esta certo disso?'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                  child: Text('Não'),
                                                                                ),
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                  child: Text('Sim ja foi pago'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ) ??
                                                                        false;
                                                                if (confirmDialogResponse) {
                                                                  await columnCorridasRecord
                                                                      .reference
                                                                      .update({
                                                                    ...createCorridasRecordData(
                                                                      pago:
                                                                          true,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'PagoEm':
                                                                            FieldValue.serverTimestamp(),
                                                                      },
                                                                    ),
                                                                  });
                                                                  if (columnCorridasRecord
                                                                          .concluido ==
                                                                      true) {
                                                                    await columnCorridasRecord
                                                                        .motoboy!
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'Divida':
                                                                              FieldValue.increment(-(columnCorridasRecord.valorProduto)),
                                                                        },
                                                                      ),
                                                                    });
                                                                    return;
                                                                  } else {
                                                                    return;
                                                                  }
                                                                } else {
                                                                  return;
                                                                }
                                                              },
                                                              text: 'Pago',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 60.0,
                                                                height: 45.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 8.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                hoverColor: Color(
                                                                    0xFFF29200),
                                                                hoverTextColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                hoverElevation:
                                                                    3.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                36.0, 0.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                'Pagar ao comercio: ${formatNumber(
                                  valueOrDefault(
                                      currentUserDocument?.divida, 0.0),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.commaDecimal,
                                  currency: 'R\$ ',
                                )}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                36.0, 0.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                'Pagar ao Ponto:  ${formatNumber(
                                  valueOrDefault(
                                      currentUserDocument?.pagarHoje, 0.0),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.commaDecimal,
                                  currency: 'R\$ ',
                                )},00',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                36.0, 0.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                'Total: ${formatNumber(
                                  valueOrDefault(
                                          currentUserDocument?.divida, 0.0) +
                                      valueOrDefault(
                                          currentUserDocument?.pagarHoje, 0.0),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.commaDecimal,
                                  currency: 'R\$ ',
                                )}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFE3093E),
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (valueOrDefault(currentUserDocument?.pagarHoje, 0.0) >
                          0.0)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => FFButtonWidget(
                              onPressed: () async {
                                _model.apiResulttqd =
                                    await CriarPagamentoCall.call(
                                  stringrandomica: functions.gerarUUID4(),
                                  description: 'Diaria: ${dateTimeFormat(
                                    'd/M/y',
                                    getCurrentTimestamp,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}',
                                  transactionAmount: valueOrDefault(
                                      currentUserDocument?.pagarHoje, 0.0),
                                  email: currentUserEmail,
                                  firstName: currentUserDisplayName,
                                  paymentMethodId: 'pix',
                                  accessToken:
                                      'APP_USR-3703502955972422-032209-8a28de7c37a70e7a013a3ef0f65b46f0-258151765',
                                );

                                if ((_model.apiResulttqd?.succeeded ?? true)) {
                                  FFAppState().StatusApp =
                                      CriarPagamentoCall.status(
                                    (_model.apiResulttqd?.jsonBody ?? ''),
                                  )!;
                                  setState(() {});

                                  context.pushNamed(
                                    'PagPix',
                                    queryParameters: {
                                      'idPix': serializeParam(
                                        CriarPagamentoCall.idPix(
                                          (_model.apiResulttqd?.jsonBody ?? ''),
                                        )?.toString(),
                                        ParamType.String,
                                      ),
                                      'qrcode': serializeParam(
                                        CriarPagamentoCall.base64(
                                          (_model.apiResulttqd?.jsonBody ?? ''),
                                        ),
                                        ParamType.String,
                                      ),
                                      'chavePix': serializeParam(
                                        CriarPagamentoCall.qrCode(
                                          (_model.apiResulttqd?.jsonBody ?? ''),
                                        ),
                                        ParamType.String,
                                      ),
                                      'url': serializeParam(
                                        CriarPagamentoCall.url(
                                          (_model.apiResulttqd?.jsonBody ?? ''),
                                        ),
                                        ParamType.String,
                                      ),
                                      'status': serializeParam(
                                        '',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('ops, !'),
                                        content: Text(
                                            'Falha ao gerar o Pix, tente de novo'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('voltar'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }

                                setState(() {});
                              },
                              text: 'Pagar Ponto',
                              options: FFButtonOptions(
                                width: 120.0,
                                height: 50.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFF29200),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 8.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                hoverBorderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                                hoverTextColor: Color(0xFFF29200),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Voltar',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFF29200),
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation']!),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
