import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/corrida/corrida_widget.dart';
import '/componentes/ver_documento/ver_documento_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'ver_motoboy_model.dart';
export 'ver_motoboy_model.dart';

class VerMotoboyWidget extends StatefulWidget {
  const VerMotoboyWidget({
    super.key,
    required this.motoboySelect,
  });

  final DocumentReference? motoboySelect;

  @override
  State<VerMotoboyWidget> createState() => _VerMotoboyWidgetState();
}

class _VerMotoboyWidgetState extends State<VerMotoboyWidget>
    with TickerProviderStateMixin {
  late VerMotoboyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool bairroFocusListenerRegistered = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerMotoboyModel());

    _model.cidadeEndClienteFocusNode ??= FocusNode();

    _model.ruaClienteFocusNode ??= FocusNode();

    _model.bairroTextController ??= TextEditingController();

    _model.numEndClienteFocusNode ??= FocusNode();

    _model.cepFocusNode ??= FocusNode();

    _model.referenceEndClienteFocusNode ??= FocusNode();

    _model.compleEndClienteFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
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
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
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
            begin: Offset(0.0, 90.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
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
      'textOnPageLoadAnimation2': AnimationInfo(
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget!.motoboySelect!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFFF29200),
                  ),
                ),
              ),
            ),
          );
        }

        final verMotoboyUsersRecord = snapshot.data!;

        return Title(
            title: 'VerMotoboy',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              body: AuthUserStreamWidget(
                builder: (context) => StreamBuilder<PontoRecord>(
                  stream: PontoRecord.getDocument(currentUserDocument!.ponto!),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Color(0xFFF29200),
                            ),
                          ),
                        ),
                      );
                    }

                    final containerPontoRecord = snapshot.data!;

                    return Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.safePop();
                                              },
                                              child: Icon(
                                                Icons.chevron_left,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 36.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 0.0),
                                    child: Wrap(
                                      spacing: 0.0,
                                      runSpacing: 0.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.antiAlias,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 350.0,
                                              height: 280.0,
                                              constraints: BoxConstraints(
                                                maxWidth: 390.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 72.0,
                                                          height: 72.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          10.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      10.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      10.0),
                                                            ),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFF29200),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    2.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  CachedNetworkImage(
                                                                fadeInDuration:
                                                                    Duration(
                                                                        milliseconds:
                                                                            500),
                                                                fadeOutDuration:
                                                                    Duration(
                                                                        milliseconds:
                                                                            500),
                                                                imageUrl:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  verMotoboyUsersRecord
                                                                      .foto,
                                                                  'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/usre360.png?alt=media&token=4bb239e7-3698-4030-be71-d0e0e248548a',
                                                                ),
                                                                width: 44.0,
                                                                height: 44.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      verMotoboyUsersRecord
                                                                          .nome,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        verMotoboyUsersRecord
                                                                            .email,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 2.0,
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: Container(
                                                            width: 200.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .sports_motorsports,
                                                                    color: Color(
                                                                        0xFFF29200),
                                                                    size: 44.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Text(
                                                                      verMotoboyUsersRecord
                                                                          .qtdCorridasHoje
                                                                          .toString(),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Corridas hoje',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation1']!),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: Container(
                                                            width: 200.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .monetization_on_outlined,
                                                                    color: Color(
                                                                        0xFFF29200),
                                                                    size: 44.0,
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            4.0),
                                                                    child: Text(
                                                                      formatNumber(
                                                                        verMotoboyUsersRecord
                                                                            .ganhosHoje,
                                                                        formatType:
                                                                            FormatType.decimal,
                                                                        decimalType:
                                                                            DecimalType.commaDecimal,
                                                                        currency:
                                                                            'R\$ ',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Outfit',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Ganho hoje',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'containerOnPageLoadAnimation2']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 350.0,
                                              height: 280.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'CorridasMotoboy',
                                                          queryParameters: {
                                                            'motoboy':
                                                                serializeParam(
                                                              widget!
                                                                  .motoboySelect,
                                                              ParamType
                                                                  .DocumentReference,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      text: 'Corridas',
                                                      options: FFButtonOptions(
                                                        width: 200.0,
                                                        height: 50.0,
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
                                                        color:
                                                            Color(0xFFF29200),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
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
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        hoverBorderSide:
                                                            BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 1.0,
                                                        ),
                                                        hoverTextColor:
                                                            Color(0xFFF29200),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        var confirmDialogResponse =
                                                            await showDialog<
                                                                    bool>(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Excluir Motoboy'),
                                                                      content: Text(
                                                                          'tem certeza que deseja excluir esse motoboy, isso não pode ser desfeito'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              false),
                                                                          child:
                                                                              Text('Não'),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              true),
                                                                          child:
                                                                              Text('Sim Excluir'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ) ??
                                                                false;
                                                        if (confirmDialogResponse) {
                                                          await containerPontoRecord
                                                              .reference
                                                              .update({
                                                            ...mapToFirestore(
                                                              {
                                                                'LitMotoboys':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  widget!
                                                                      .motoboySelect
                                                                ]),
                                                              },
                                                            ),
                                                          });

                                                          await containerPontoRecord
                                                              .reference
                                                              .update({
                                                            ...mapToFirestore(
                                                              {
                                                                'FilaMotoboys':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  widget!
                                                                      .motoboySelect
                                                                ]),
                                                              },
                                                            ),
                                                          });
                                                          await verMotoboyUsersRecord
                                                              .endereco!
                                                              .delete();
                                                          await verMotoboyUsersRecord
                                                              .reference
                                                              .delete();
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Sucesso'),
                                                                content: Text(
                                                                    'Deletado com sucesso!'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        } else {
                                                          return;
                                                        }
                                                      },
                                                      text: 'Excluir',
                                                      options: FFButtonOptions(
                                                        width: 200.0,
                                                        height: 50.0,
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
                                                        color:
                                                            Color(0xFFE3093E),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
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
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        hoverBorderSide:
                                                            BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 1.0,
                                                        ),
                                                        hoverTextColor:
                                                            Color(0xFFF29200),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 350.0,
                                              height: 280.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  12.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Text(
                                                        'Status',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  verMotoboyUsersRecord
                                                                              .aprovado ==
                                                                          true
                                                                      ? 'Desaprovar'
                                                                      : 'Aprovar',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Switch.adaptive(
                                                                  value: _model
                                                                          .switchValue1 ??=
                                                                      verMotoboyUsersRecord
                                                                          .aprovado,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.switchValue1 =
                                                                            newValue!);
                                                                    if (newValue!) {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        aprovado:
                                                                            true,
                                                                      ));
                                                                    } else {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        aprovado:
                                                                            false,
                                                                      ));
                                                                    }
                                                                  },
                                                                  activeColor:
                                                                      Color(
                                                                          0xFFF29200),
                                                                  activeTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  inactiveTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                  inactiveThumbColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  verMotoboyUsersRecord
                                                                              .bloqueado ==
                                                                          true
                                                                      ? 'Desbloquear'
                                                                      : 'Bloquear',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Switch.adaptive(
                                                                  value: _model
                                                                          .switchValue2 ??=
                                                                      verMotoboyUsersRecord
                                                                          .bloqueado,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.switchValue2 =
                                                                            newValue!);
                                                                    if (newValue!) {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        bloqueado:
                                                                            true,
                                                                      ));
                                                                    } else {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        bloqueado:
                                                                            false,
                                                                      ));
                                                                    }
                                                                  },
                                                                  activeColor:
                                                                      Color(
                                                                          0xFFF29200),
                                                                  activeTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  inactiveTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  inactiveThumbColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  verMotoboyUsersRecord
                                                                              .nafila ==
                                                                          true
                                                                      ? 'Tirar da fila'
                                                                      : 'Colocar na fila',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Switch.adaptive(
                                                                  value: _model
                                                                          .switchValue3 ??=
                                                                      verMotoboyUsersRecord
                                                                          .nafila,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.switchValue3 =
                                                                            newValue!);
                                                                    if (newValue!) {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update({
                                                                        ...createUsersRecordData(
                                                                          nafila:
                                                                              true,
                                                                          impedido:
                                                                              true,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'Alterado_em':
                                                                                FieldValue.serverTimestamp(),
                                                                          },
                                                                        ),
                                                                      });

                                                                      await containerPontoRecord
                                                                          .reference
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'FilaMotoboys':
                                                                                FieldValue.arrayUnion([
                                                                              widget!.motoboySelect
                                                                            ]),
                                                                          },
                                                                        ),
                                                                      });
                                                                    } else {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        nafila:
                                                                            false,
                                                                        impedido:
                                                                            false,
                                                                      ));

                                                                      await containerPontoRecord
                                                                          .reference
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'FilaMotoboys':
                                                                                FieldValue.arrayRemove([
                                                                              widget!.motoboySelect
                                                                            ]),
                                                                          },
                                                                        ),
                                                                      });
                                                                    }
                                                                  },
                                                                  activeColor:
                                                                      Color(
                                                                          0xFFF29200),
                                                                  activeTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  inactiveTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  inactiveThumbColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 60.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            offset: Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  12.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  verMotoboyUsersRecord
                                                                              .ativo ==
                                                                          true
                                                                      ? 'Desativar dia'
                                                                      : 'Ativar dia',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Switch.adaptive(
                                                                  value: _model
                                                                          .switchValue4 ??=
                                                                      verMotoboyUsersRecord
                                                                          .ativo,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        _model.switchValue4 =
                                                                            newValue!);
                                                                    if (newValue!) {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        ativo:
                                                                            true,
                                                                        impedido:
                                                                            false,
                                                                      ));
                                                                    } else {
                                                                      await verMotoboyUsersRecord
                                                                          .reference
                                                                          .update(
                                                                              createUsersRecordData(
                                                                        ativo:
                                                                            false,
                                                                      ));
                                                                    }
                                                                  },
                                                                  activeColor:
                                                                      Color(
                                                                          0xFFF29200),
                                                                  activeTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  inactiveTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  inactiveThumbColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                ),
                                                              ],
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
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 350.0,
                                              height: 470.0,
                                              constraints: BoxConstraints(
                                                maxWidth: 450.0,
                                                maxHeight: 700.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
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
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        primary: false,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Documentos',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        30.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Lista de documentos',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textOnPageLoadAnimation1']!),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 280.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final docsDoMotoboy =
                                                                        verMotoboyUsersRecord
                                                                            .documentosList
                                                                            .toList();

                                                                    return SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            docsDoMotoboy.length,
                                                                            (docsDoMotoboyIndex) {
                                                                          final docsDoMotoboyItem =
                                                                              docsDoMotoboy[docsDoMotoboyIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                4.0,
                                                                                8.0,
                                                                                4.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Builder(
                                                                                    builder: (context) => Padding(
                                                                                      padding: EdgeInsets.all(8.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (dialogContext) {
                                                                                              return Dialog(
                                                                                                elevation: 0,
                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                child: VerDocumentoWidget(
                                                                                                  documento: valueOrDefault<String>(
                                                                                                    docsDoMotoboyItem,
                                                                                                    'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/sem%20logo2.png?alt=media&token=b0fab6b5-01c2-4681-bf51-f2989da1ad72',
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => setState(() {}));
                                                                                        },
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 4.0,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(8.0),
                                                                                          ),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              image: DecorationImage(
                                                                                                fit: BoxFit.contain,
                                                                                                image: Image.network(
                                                                                                  docsDoMotoboyItem,
                                                                                                ).image,
                                                                                              ),
                                                                                              boxShadow: [
                                                                                                BoxShadow(
                                                                                                  blurRadius: 6.0,
                                                                                                  color: Color(0x4B1A1F24),
                                                                                                  offset: Offset(
                                                                                                    0.0,
                                                                                                    2.0,
                                                                                                  ),
                                                                                                )
                                                                                              ],
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              shape: BoxShape.rectangle,
                                                                                            ),
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(1.0, -1.0),
                                                                                                  child: InkWell(
                                                                                                    splashColor: Colors.transparent,
                                                                                                    focusColor: Colors.transparent,
                                                                                                    hoverColor: Colors.transparent,
                                                                                                    highlightColor: Colors.transparent,
                                                                                                    onTap: () async {
                                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                                            context: context,
                                                                                                            builder: (alertDialogContext) {
                                                                                                              return AlertDialog(
                                                                                                                title: Text('Atenção '),
                                                                                                                content: Text('Você está prestes a apagar essa imagem, isso não pode ser desfeito, tem certeza disso'),
                                                                                                                actions: [
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                                    child: Text('Não'),
                                                                                                                  ),
                                                                                                                  TextButton(
                                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                                    child: Text('Apagar'),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              );
                                                                                                            },
                                                                                                          ) ??
                                                                                                          false;
                                                                                                      if (confirmDialogResponse) {
                                                                                                        await widget!.motoboySelect!.update({
                                                                                                          ...mapToFirestore(
                                                                                                            {
                                                                                                              'DocumentosList': FieldValue.arrayRemove([docsDoMotoboyItem]),
                                                                                                            },
                                                                                                          ),
                                                                                                        });
                                                                                                        await FirebaseStorage.instance.refFromURL(docsDoMotoboyItem).delete();
                                                                                                        return;
                                                                                                      } else {
                                                                                                        return;
                                                                                                      }
                                                                                                    },
                                                                                                    child: FaIcon(
                                                                                                      FontAwesomeIcons.solidTrashAlt,
                                                                                                      color: Color(0xFFE3093E),
                                                                                                      size: 24.0,
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          16.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  if (verMotoboyUsersRecord
                                                                          .aprovado ==
                                                                      true) {
                                                                    await verMotoboyUsersRecord
                                                                        .reference
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      aprovado:
                                                                          false,
                                                                    ));
                                                                  } else {
                                                                    await verMotoboyUsersRecord
                                                                        .reference
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      aprovado:
                                                                          true,
                                                                    ));
                                                                  }
                                                                },
                                                                text: verMotoboyUsersRecord
                                                                            .aprovado ==
                                                                        true
                                                                    ? 'Desaprovar'
                                                                    : 'Aprovar',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Color(
                                                                      0xFFF29200),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      8.0,
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
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  hoverBorderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  hoverTextColor:
                                                                      Color(
                                                                          0xFFF29200),
                                                                ),
                                                              ),
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
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 350.0,
                                              height: 470.0,
                                              constraints: BoxConstraints(
                                                maxWidth: 450.0,
                                                maxHeight: 700.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
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
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                16.0,
                                                                16.0,
                                                                16.0,
                                                                0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Pagar hoje',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                fontSize: 30.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Lista das faturas a pagar pro comercio',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textOnPageLoadAnimation2']!),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height: 190.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: StreamBuilder<
                                                                List<
                                                                    CorridasRecord>>(
                                                              stream:
                                                                  queryCorridasRecord(
                                                                queryBuilder: (corridasRecord) =>
                                                                    corridasRecord
                                                                        .where(
                                                                          'Motoboy',
                                                                          isEqualTo:
                                                                              verMotoboyUsersRecord.reference,
                                                                        )
                                                                        .where(
                                                                          'Pago',
                                                                          isEqualTo:
                                                                              false,
                                                                        )
                                                                        .where(
                                                                          'Concluido',
                                                                          isEqualTo:
                                                                              true,
                                                                        )
                                                                        .orderBy(
                                                                            'DisponivelEm',
                                                                            descending:
                                                                                true),
                                                              ),
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
                                                                List<CorridasRecord>
                                                                    columnCorridasRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return SingleChildScrollView(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: List.generate(
                                                                        columnCorridasRecordList
                                                                            .length,
                                                                        (columnIndex) {
                                                                      final columnCorridasRecord =
                                                                          columnCorridasRecordList[
                                                                              columnIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            4.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Builder(
                                                                                builder: (context) => InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (dialogContext) {
                                                                                        return Dialog(
                                                                                          elevation: 0,
                                                                                          insetPadding: EdgeInsets.zero,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                          child: CorridaWidget(
                                                                                            parametCorrida: columnCorridasRecord,
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    ).then((value) => setState(() {}));
                                                                                  },
                                                                                  child: Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 4.0,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                    ),
                                                                                    child: Container(
                                                                                      width: 350.0,
                                                                                      height: 50.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        boxShadow: [
                                                                                          BoxShadow(
                                                                                            blurRadius: 6.0,
                                                                                            color: Color(0x4B1A1F24),
                                                                                            offset: Offset(
                                                                                              0.0,
                                                                                              2.0,
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                        shape: BoxShape.rectangle,
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsets.all(8.0),
                                                                                            child: StreamBuilder<ComerciosRecord>(
                                                                                              stream: ComerciosRecord.getDocument(columnCorridasRecord.comercio!),
                                                                                              builder: (context, snapshot) {
                                                                                                // Customize what your widget looks like when it's loading.
                                                                                                if (!snapshot.hasData) {
                                                                                                  return Center(
                                                                                                    child: SizedBox(
                                                                                                      width: 50.0,
                                                                                                      height: 50.0,
                                                                                                      child: CircularProgressIndicator(
                                                                                                        valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                          Color(0xFFF29200),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                }

                                                                                                final imageComerciosRecord = snapshot.data!;

                                                                                                return ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.network(
                                                                                                    valueOrDefault<String>(
                                                                                                      imageComerciosRecord.logo,
                                                                                                      'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/sem%20logo2.png?alt=media&token=b0fab6b5-01c2-4681-bf51-f2989da1ad72',
                                                                                                    ),
                                                                                                    width: 45.0,
                                                                                                    height: 45.0,
                                                                                                    fit: BoxFit.contain,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                              child: AutoSizeText(
                                                                                                formatNumber(
                                                                                                  columnCorridasRecord.valorProduto,
                                                                                                  formatType: FormatType.decimal,
                                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                                  currency: 'R\$',
                                                                                                ),
                                                                                                textAlign: TextAlign.start,
                                                                                                maxLines: 1,
                                                                                                minFontSize: 1.0,
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                              child: AutoSizeText(
                                                                                                '${dateTimeFormat(
                                                                                                  'd/M',
                                                                                                  columnCorridasRecord.disponivelEm,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                )},  ${dateTimeFormat(
                                                                                                  'jms',
                                                                                                  columnCorridasRecord.disponivelEm,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                )}',
                                                                                                textAlign: TextAlign.end,
                                                                                                maxLines: 1,
                                                                                                minFontSize: 1.0,
                                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                      fontFamily: 'Outfit',
                                                                                                      letterSpacing: 0.0,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                                    context: context,
                                                                                                    builder: (alertDialogContext) {
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
                                                                                                            child: Text('Sim ja recebi'),
                                                                                                          ),
                                                                                                        ],
                                                                                                      );
                                                                                                    },
                                                                                                  ) ??
                                                                                                  false;
                                                                                              if (confirmDialogResponse) {
                                                                                                await columnCorridasRecord.reference.update({
                                                                                                  ...createCorridasRecordData(
                                                                                                    pago: true,
                                                                                                  ),
                                                                                                  ...mapToFirestore(
                                                                                                    {
                                                                                                      'PagoEm': FieldValue.serverTimestamp(),
                                                                                                    },
                                                                                                  ),
                                                                                                });
                                                                                                if (columnCorridasRecord.concluido == true) {
                                                                                                  await verMotoboyUsersRecord.reference.update({
                                                                                                    ...mapToFirestore(
                                                                                                      {
                                                                                                        'Divida': FieldValue.increment(-(columnCorridasRecord.valorProduto)),
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
                                                                                            options: FFButtonOptions(
                                                                                              width: 60.0,
                                                                                              height: 45.0,
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                    fontFamily: 'Readex Pro',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                              elevation: 8.0,
                                                                                              borderSide: BorderSide(
                                                                                                color: Colors.transparent,
                                                                                                width: 1.0,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              hoverColor: Color(0xFFF29200),
                                                                                              hoverTextColor: FlutterFlowTheme.of(context).primaryText,
                                                                                              hoverElevation: 3.0,
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
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Pagar ao comercio: ${formatNumber(
                                                                verMotoboyUsersRecord
                                                                    .divida,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency:
                                                                    'R\$ ',
                                                              )}',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Pagar ao Ponto:  ${formatNumber(
                                                                verMotoboyUsersRecord
                                                                    .pagarHoje,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency:
                                                                    'R\$ ',
                                                              )},00',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              'Total: ${formatNumber(
                                                                verMotoboyUsersRecord
                                                                        .pagarHoje +
                                                                    verMotoboyUsersRecord
                                                                        .divida,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency:
                                                                    'R\$ ',
                                                              )}',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Color(
                                                                        0xFFE3093E),
                                                                    fontSize:
                                                                        22.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          16.0,
                                                                          8.0,
                                                                          16.0),
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
                                                                                title: Text('Atenção '),
                                                                                content: Text('Você está dizendo que recebeu, tudo que esse motoboy, devia ao ponto, deseja confirmar essa informação?'),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                    child: Text('Não'),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                    child: Text('Sim recebi, liberar ele'),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
                                                                          ) ??
                                                                          false;
                                                                  if (confirmDialogResponse) {
                                                                    await verMotoboyUsersRecord
                                                                        .reference
                                                                        .update(
                                                                            createUsersRecordData(
                                                                      pagarHoje:
                                                                          0.0,
                                                                      impedido:
                                                                          false,
                                                                      ativo:
                                                                          true,
                                                                    ));
                                                                    return;
                                                                  } else {
                                                                    return;
                                                                  }
                                                                },
                                                                text: 'Receber',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: Color(
                                                                      0xFFF29200),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      8.0,
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
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  hoverBorderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  hoverTextColor:
                                                                      Color(
                                                                          0xFFF29200),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 8.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: 350.0,
                                              height: 470.0,
                                              constraints: BoxConstraints(
                                                maxWidth: 450.0,
                                                maxHeight: 700.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
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
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child:
                                                  StreamBuilder<EnderecoRecord>(
                                                stream:
                                                    EnderecoRecord.getDocument(
                                                        verMotoboyUsersRecord
                                                            .endereco!),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            Color(0xFFF29200),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }

                                                  final columnEnderecoRecord =
                                                      snapshot.data!;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Endereço',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    fontSize:
                                                                        30.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 300.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.cidadeEndClienteTextController ??=
                                                                            TextEditingController(
                                                                      text: columnEnderecoRecord
                                                                          .cidade,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .cidadeEndClienteFocusNode,
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'Cidade',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Color(0xFFF29200),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Ex: São Paulo',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFF29200),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsets.all(
                                                                              18.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    minLines: 1,
                                                                    validator: _model
                                                                        .cidadeEndClienteTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 300.0,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.ruaClienteTextController ??=
                                                                            TextEditingController(
                                                                      text: columnEnderecoRecord
                                                                          .rua,
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .ruaClienteFocusNode,
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelText:
                                                                          'Rua',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Color(0xFFF29200),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Digite o nome da sua rua',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Color(0xFFF29200),
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(36.0),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsets.all(
                                                                              18.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    minLines: 1,
                                                                    validator: _model
                                                                        .ruaClienteTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    BairroRecord>>(
                                                              stream:
                                                                  queryBairroRecord(
                                                                parent:
                                                                    currentUserDocument
                                                                        ?.ponto,
                                                              )..listen((snapshot) {
                                                                      List<BairroRecord>
                                                                          bairroBairroRecordList =
                                                                          snapshot;
                                                                      if (_model.bairroPreviousSnapshot !=
                                                                              null &&
                                                                          !const ListEquality(BairroRecordDocumentEquality()).equals(
                                                                              bairroBairroRecordList,
                                                                              _model.bairroPreviousSnapshot)) {
                                                                        () async {
                                                                          _model.refBairro = bairroBairroRecordList
                                                                              .where((e) => e.nome == _model.bairroSelectedOption)
                                                                              .toList()
                                                                              .first
                                                                              .reference;
                                                                          setState(
                                                                              () {});

                                                                          setState(
                                                                              () {});
                                                                        }();
                                                                      }
                                                                      _model.bairroPreviousSnapshot =
                                                                          snapshot;
                                                                    }),
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
                                                                List<BairroRecord>
                                                                    bairroBairroRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return Container(
                                                                  width: 300.0,
                                                                  child:
                                                                      Autocomplete<
                                                                          String>(
                                                                    initialValue:
                                                                        TextEditingValue(),
                                                                    optionsBuilder:
                                                                        (textEditingValue) {
                                                                      if (textEditingValue
                                                                              .text ==
                                                                          '') {
                                                                        return const Iterable<
                                                                            String>.empty();
                                                                      }
                                                                      return bairroBairroRecordList
                                                                          .map((e) => e
                                                                              .nome)
                                                                          .toList()
                                                                          .where(
                                                                              (option) {
                                                                        final lowercaseOption =
                                                                            option.toLowerCase();
                                                                        return lowercaseOption.contains(textEditingValue
                                                                            .text
                                                                            .toLowerCase());
                                                                      });
                                                                    },
                                                                    optionsViewBuilder:
                                                                        (context,
                                                                            onSelected,
                                                                            options) {
                                                                      return AutocompleteOptionsList(
                                                                        textFieldKey:
                                                                            _model.bairroKey,
                                                                        textController:
                                                                            _model.bairroTextController!,
                                                                        options:
                                                                            options.toList(),
                                                                        onSelected:
                                                                            onSelected,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textHighlightStyle:
                                                                            TextStyle(),
                                                                        elevation:
                                                                            4.0,
                                                                        optionBackgroundColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        optionHighlightColor:
                                                                            FlutterFlowTheme.of(context).secondaryBackground,
                                                                        maxHeight:
                                                                            200.0,
                                                                      );
                                                                    },
                                                                    onSelected:
                                                                        (String
                                                                            selection) {
                                                                      setState(() =>
                                                                          _model.bairroSelectedOption =
                                                                              selection);
                                                                      FocusScope.of(
                                                                              context)
                                                                          .unfocus();
                                                                    },
                                                                    fieldViewBuilder:
                                                                        (
                                                                      context,
                                                                      textEditingController,
                                                                      focusNode,
                                                                      onEditingComplete,
                                                                    ) {
                                                                      _model.bairroFocusNode =
                                                                          focusNode;
                                                                      if (!bairroFocusListenerRegistered) {
                                                                        bairroFocusListenerRegistered =
                                                                            true;
                                                                        _model
                                                                            .bairroFocusNode!
                                                                            .addListener(
                                                                          () async {
                                                                            _model.refBairro =
                                                                                bairroBairroRecordList.where((e) => e.nome == _model.bairroSelectedOption).toList().first.reference;
                                                                            setState(() {});
                                                                          },
                                                                        );
                                                                      }
                                                                      _model.bairroTextController =
                                                                          textEditingController;
                                                                      return TextFormField(
                                                                        key: _model
                                                                            .bairroKey,
                                                                        controller:
                                                                            textEditingController,
                                                                        focusNode:
                                                                            focusNode,
                                                                        onEditingComplete:
                                                                            onEditingComplete,
                                                                        onChanged:
                                                                            (_) =>
                                                                                EasyDebounce.debounce(
                                                                          '_model.bairroTextController',
                                                                          Duration(
                                                                              milliseconds: 2000),
                                                                          () async {
                                                                            _model.refBairro =
                                                                                bairroBairroRecordList.where((e) => e.nome == _model.bairroSelectedOption).toList().first.reference;
                                                                            setState(() {});
                                                                          },
                                                                        ),
                                                                        onFieldSubmitted:
                                                                            (_) async {
                                                                          _model.refBairro = bairroBairroRecordList
                                                                              .where((e) => e.nome == _model.bairroSelectedOption)
                                                                              .toList()
                                                                              .first
                                                                              .reference;
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'Bairro',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: Color(0xFFF29200),
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Pesquise um bairro',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFF29200),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          contentPadding:
                                                                              EdgeInsets.all(18.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        validator: _model
                                                                            .bairroTextControllerValidator
                                                                            .asValidator(context),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 70.0,
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model.numEndClienteTextController ??=
                                                                              TextEditingController(
                                                                        text: columnEnderecoRecord
                                                                            .num,
                                                                      ),
                                                                      focusNode:
                                                                          _model
                                                                              .numEndClienteFocusNode,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            'Nº',
                                                                        labelStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFFF29200),
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        hintText:
                                                                            'Nº',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(36.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0xFFF29200),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(36.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(36.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(36.0),
                                                                        ),
                                                                        contentPadding:
                                                                            EdgeInsets.all(18.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      validator: _model
                                                                          .numEndClienteTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          120.0,
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.cepTextController ??=
                                                                                TextEditingController(
                                                                          text:
                                                                              columnEnderecoRecord.cep,
                                                                        ),
                                                                        focusNode:
                                                                            _model.cepFocusNode,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              'CEP',
                                                                          labelStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: Color(0xFFF29200),
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          hintText:
                                                                              'Seu CEP',
                                                                          hintStyle: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                          enabledBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          focusedBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFF29200),
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          errorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              width: 2.0,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(36.0),
                                                                          ),
                                                                          contentPadding:
                                                                              EdgeInsets.all(18.0),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        validator: _model
                                                                            .cepTextControllerValidator
                                                                            .asValidator(context),
                                                                        inputFormatters: [
                                                                          _model
                                                                              .cepMask
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                                  controller: _model
                                                                          .ddUFValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.ddUFValue ??=
                                                                        columnEnderecoRecord
                                                                            .uf,
                                                                  ),
                                                                  options: [
                                                                    'AC',
                                                                    'AL',
                                                                    'AP',
                                                                    'AM',
                                                                    'BA',
                                                                    'CE',
                                                                    'DF',
                                                                    'ES',
                                                                    'GO',
                                                                    'MA',
                                                                    'MT',
                                                                    'MS',
                                                                    'MG',
                                                                    'PA',
                                                                    'PB',
                                                                    'PR',
                                                                    'PE',
                                                                    'PI',
                                                                    'RJ',
                                                                    'RN',
                                                                    'RS',
                                                                    'RO',
                                                                    'RR',
                                                                    'SC',
                                                                    'SP',
                                                                    'SE',
                                                                    'TO'
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      setState(() =>
                                                                          _model.ddUFValue =
                                                                              val),
                                                                  width: 90.0,
                                                                  height: 56.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText:
                                                                      'UF',
                                                                  icon: Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: Color(
                                                                        0xFFF29200),
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: Color(
                                                                      0x00FFFFFF),
                                                                  elevation:
                                                                      2.0,
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      24.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      true,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 300.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                        .referenceEndClienteTextController ??=
                                                                    TextEditingController(
                                                                  text: columnEnderecoRecord
                                                                      .referencia,
                                                                ),
                                                                focusNode: _model
                                                                    .referenceEndClienteFocusNode,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Ponto de Referencia',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Color(
                                                                            0xFFF29200),
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText:
                                                                      'Ex: Portão azul, perto da praça',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFF29200),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              18.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                validator: _model
                                                                    .referenceEndClienteTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 300.0,
                                                              child:
                                                                  TextFormField(
                                                                controller: _model
                                                                        .compleEndClienteTextController ??=
                                                                    TextEditingController(
                                                                  text: columnEnderecoRecord
                                                                      .complemento,
                                                                ),
                                                                focusNode: _model
                                                                    .compleEndClienteFocusNode,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      'Complemento',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Color(
                                                                            0xFFF29200),
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  hintText:
                                                                      'Ex: ap.4 ou fundo',
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFFF29200),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  errorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            36.0),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              18.0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                validator: _model
                                                                    .compleEndClienteTextControllerValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    16.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            await verMotoboyUsersRecord
                                                                .endereco!
                                                                .update(
                                                                    createEnderecoRecordData(
                                                              uf: _model
                                                                  .ddUFValue,
                                                              cidade: _model
                                                                  .cidadeEndClienteTextController
                                                                  .text,
                                                              rua: _model
                                                                  .ruaClienteTextController
                                                                  .text,
                                                              num: _model
                                                                  .numEndClienteTextController
                                                                  .text,
                                                              referencia: _model
                                                                  .referenceEndClienteTextController
                                                                  .text,
                                                              complemento: _model
                                                                  .compleEndClienteTextController
                                                                  .text,
                                                              localizar:
                                                                  'R. ${_model.ruaClienteTextController.text}, ${_model.numEndClienteTextController.text} - ${_model.bairroSelectedOption}, ${_model.cidadeEndClienteTextController.text} - ${_model.ddUFValue}, ${_model.cepTextController.text}',
                                                              cep: _model
                                                                  .cepTextController
                                                                  .text,
                                                              bairro2: _model
                                                                  .refBairro,
                                                            ));
                                                          },
                                                          text: 'Alterar',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 100.0,
                                                            height: 40.0,
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
                                                            color: Color(
                                                                0xFFF29200),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
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
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            hoverBorderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              width: 1.0,
                                                            ),
                                                            hoverTextColor:
                                                                Color(
                                                                    0xFFF29200),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ));
      },
    );
  }
}
