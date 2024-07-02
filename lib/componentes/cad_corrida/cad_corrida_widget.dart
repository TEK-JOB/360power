import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'cad_corrida_model.dart';
export 'cad_corrida_model.dart';

class CadCorridaWidget extends StatefulWidget {
  const CadCorridaWidget({
    super.key,
    required this.docBairroOrigem,
    required this.comercio,
  });

  final BairroRecord? docBairroOrigem;
  final ComerciosRecord? comercio;

  @override
  State<CadCorridaWidget> createState() => _CadCorridaWidgetState();
}

class _CadCorridaWidgetState extends State<CadCorridaWidget>
    with TickerProviderStateMixin {
  late CadCorridaModel _model;

  bool bairroFocusListenerRegistered = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadCorridaModel());

    _model.idTextController ??= TextEditingController();
    _model.idFocusNode ??= FocusNode();

    _model.bairroTextController ??= TextEditingController();

    _model.foneTextController ??= TextEditingController();
    _model.foneFocusNode ??= FocusNode();

    _model.prcoPedidoTextController ??= TextEditingController();
    _model.prcoPedidoFocusNode ??= FocusNode();

    _model.detalhesTextController ??= TextEditingController();
    _model.detalhesFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
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
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation1': AnimationInfo(
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
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation2': AnimationInfo(
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
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation3': AnimationInfo(
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
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation4': AnimationInfo(
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
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation5': AnimationInfo(
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
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 600.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 60.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 800.ms),
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 800.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
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
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 6.0,
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: AuthUserStreamWidget(
              builder: (context) => StreamBuilder<List<UsersRecord>>(
                stream: queryUsersRecord(
                  queryBuilder: (usersRecord) => usersRecord
                      .where(
                        'tipo',
                        isNotEqualTo: 'comercio',
                      )
                      .where(
                        'ponto',
                        isEqualTo: currentUserDocument?.ponto,
                      )
                      .where(
                        'Ativo',
                        isEqualTo: true,
                      ),
                ),
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
                  List<UsersRecord> containerUsersRecordList = snapshot.data!;
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x4D000000),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 24.0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: 1200.0,
                                height: 900.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 10.0,
                                              height: 10.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                            ),
                                            Text(
                                              'Solicitar Motoboy',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation1']!),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  width: 48.0,
                                                  height: 48.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF02E4B),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(12.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons.close_rounded,
                                                    color: Colors.white,
                                                    size: 36.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: StreamBuilder<
                                                List<BairroRecord>>(
                                              stream: queryBairroRecord(),
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
                                                List<BairroRecord>
                                                    containerBairroRecordList =
                                                    snapshot.data!;
                                                return Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 530.0,
                                                    maxHeight: 800.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x19000000),
                                                        offset: Offset(
                                                          0.0,
                                                          2.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: Text(
                                                                  'Preencha os campos abaixo e clique em solicitar, para solicitar aleatório',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'textOnPageLoadAnimation2']!),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .idTextController,
                                                                  focusNode: _model
                                                                      .idFocusNode,
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'ID',
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
                                                                        'Insira o ID',
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              36.0),
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
                                                                  validator: _model
                                                                      .idTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textFieldOnPageLoadAnimation1']!),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
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
                                                                    return containerBairroRecordList
                                                                        .map((e) => e
                                                                            .nome)
                                                                        .toList()
                                                                        .where(
                                                                            (option) {
                                                                      final lowercaseOption =
                                                                          option
                                                                              .toLowerCase();
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
                                                                          _model
                                                                              .bairroKey,
                                                                      textController:
                                                                          _model
                                                                              .bairroTextController!,
                                                                      options:
                                                                          options
                                                                              .toList(),
                                                                      onSelected:
                                                                          onSelected,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textHighlightStyle:
                                                                          TextStyle(),
                                                                      elevation:
                                                                          4.0,
                                                                      optionBackgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                      optionHighlightColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
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
                                                                          _model.docBairroDestino = containerBairroRecordList
                                                                              .where((e) => e.nome == _model.bairroSelectedOption)
                                                                              .toList()
                                                                              .first;
                                                                          setState(
                                                                              () {});
                                                                          _model.acheiRota2 =
                                                                              await queryRotaRecordOnce(
                                                                            parent:
                                                                                currentUserDocument?.ponto,
                                                                            queryBuilder: (rotaRecord) =>
                                                                                rotaRecord.where(
                                                                              'CodigoRota',
                                                                              isEqualTo: '${widget.docBairroOrigem?.codigoBairro}${_model.docBairroDestino?.codigoBairro}',
                                                                            ),
                                                                            singleRecord:
                                                                                true,
                                                                          ).then((s) => s.firstOrNull);
                                                                          _model.rotaAchada =
                                                                              _model.acheiRota2;
                                                                          setState(
                                                                              () {});

                                                                          setState(
                                                                              () {});
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
                                                                            milliseconds:
                                                                                2000),
                                                                        () async {
                                                                          _model.docBairroDestino = containerBairroRecordList
                                                                              .where((e) => e.nome == _model.bairroSelectedOption)
                                                                              .toList()
                                                                              .first;
                                                                          setState(
                                                                              () {});
                                                                          _model.acheiRota =
                                                                              await queryRotaRecordOnce(
                                                                            parent:
                                                                                currentUserDocument?.ponto,
                                                                            queryBuilder: (rotaRecord) =>
                                                                                rotaRecord.where(
                                                                              'CodigoRota',
                                                                              isEqualTo: '${widget.docBairroOrigem?.codigoBairro}${_model.docBairroDestino?.codigoBairro}',
                                                                            ),
                                                                            singleRecord:
                                                                                true,
                                                                          ).then((s) => s.firstOrNull);
                                                                          _model.rotaAchada =
                                                                              _model.acheiRota;
                                                                          setState(
                                                                              () {});

                                                                          setState(
                                                                              () {});
                                                                        },
                                                                      ),
                                                                      onFieldSubmitted:
                                                                          (_) async {
                                                                        _model.docBairroDestino = containerBairroRecordList
                                                                            .where((e) =>
                                                                                e.nome ==
                                                                                _model.bairroSelectedOption)
                                                                            .toList()
                                                                            .first;
                                                                        setState(
                                                                            () {});
                                                                        _model.acheiRota3 =
                                                                            await queryRotaRecordOnce(
                                                                          parent:
                                                                              currentUserDocument?.ponto,
                                                                          queryBuilder: (rotaRecord) =>
                                                                              rotaRecord.where(
                                                                            'CodigoRota',
                                                                            isEqualTo:
                                                                                '${widget.docBairroOrigem?.codigoBairro}${_model.docBairroDestino?.codigoBairro}',
                                                                          ),
                                                                          singleRecord:
                                                                              true,
                                                                        ).then((s) =>
                                                                                s.firstOrNull);
                                                                        _model.rotaAchada =
                                                                            _model.acheiRota3;
                                                                        setState(
                                                                            () {});

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
                                                                            'Pesquise o bairro do cliente',
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
                                                                          .bairroTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    );
                                                                  },
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textFieldOnPageLoadAnimation2']!),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .foneTextController,
                                                                  focusNode: _model
                                                                      .foneFocusNode,
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Telefone',
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
                                                                        'Telefone do cliente',
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              36.0),
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
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .number,
                                                                  validator: _model
                                                                      .foneTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                  inputFormatters: [
                                                                    _model
                                                                        .foneMask
                                                                  ],
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textFieldOnPageLoadAnimation3']!),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .prcoPedidoTextController,
                                                                  focusNode: _model
                                                                      .prcoPedidoFocusNode,
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Valor produto',
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
                                                                        'Adicione o valor do produto',
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              36.0),
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
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .number,
                                                                  validator: _model
                                                                      .prcoPedidoTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textFieldOnPageLoadAnimation4']!),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .detalhesTextController,
                                                                  focusNode: _model
                                                                      .detalhesFocusNode,
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Detalhes',
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
                                                                        'COLE OU DIGITE\n\nNOME DO CLIENTE:\n\nENDEREÇO:\n\nREFERÊNCIA;\n\nVALOR DO PRODUTO:\n\nFORMA DE PAGAMENTO\n\nNUMERO DO TELEFONE\n\n\n\n',
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .error,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              36.0),
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
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  maxLines: 15,
                                                                  validator: _model
                                                                      .detalhesTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'textFieldOnPageLoadAnimation5']!),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Valor da corrida: ',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            formatNumber(
                                                                              _model.rotaAchada?.rotaPreco,
                                                                              formatType: FormatType.decimal,
                                                                              decimalType: DecimalType.commaDecimal,
                                                                              currency: 'R\$ ',
                                                                            ),
                                                                            '0',
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: 'Outfit',
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                letterSpacing: 0.0,
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
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            'Esses são os motoboys disponiveis agora, e você pode escolher um para sua entrega,  clicando no motoboy que deseja, e se estiver verde é porque ele ja está vindo pra cá e você pode fazer uma casadinha',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'textOnPageLoadAnimation3']!),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 8.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Container(
                                                height: double.infinity,
                                                constraints: BoxConstraints(
                                                  maxWidth: 530.0,
                                                  maxHeight: 850.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        8.0,
                                                                        8.0,
                                                                        12.0),
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
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (_model.formKey.currentState ==
                                                                              null ||
                                                                          !_model
                                                                              .formKey
                                                                              .currentState!
                                                                              .validate()) {
                                                                        return;
                                                                      }
                                                                      Navigator.pop(
                                                                          context);

                                                                      var corridasRecordReference = CorridasRecord
                                                                          .collection
                                                                          .doc();
                                                                      await corridasRecordReference
                                                                          .set({
                                                                        ...createCorridasRecordData(
                                                                          comercio: widget
                                                                              .comercio
                                                                              ?.reference,
                                                                          ponto:
                                                                              currentUserDocument?.ponto,
                                                                          status:
                                                                              'Agendada',
                                                                          detalhe: _model
                                                                              .detalhesTextController
                                                                              .text,
                                                                          cancelado:
                                                                              false,
                                                                          concluido:
                                                                              false,
                                                                          disponivel:
                                                                              false,
                                                                          idPedido: _model
                                                                              .idTextController
                                                                              .text,
                                                                          foneDestino: _model
                                                                              .foneTextController
                                                                              .text,
                                                                          aceito:
                                                                              false,
                                                                          coletado:
                                                                              false,
                                                                          agendado:
                                                                              true,
                                                                          pago:
                                                                              true,
                                                                          valorCorrida: _model
                                                                              .rotaAchada
                                                                              ?.rotaPreco,
                                                                          valorProduto: double.tryParse(_model
                                                                              .prcoPedidoTextController
                                                                              .text),
                                                                          zap: functions.limpaCamposTelefone(_model
                                                                              .foneTextController
                                                                              .text),
                                                                          nomeComercio:
                                                                              valueOrDefault<String>(
                                                                            widget.comercio?.nomeComercio,
                                                                            'Comercio sem nome',
                                                                          ),
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'AggendadoEm':
                                                                                FieldValue.serverTimestamp(),
                                                                            'PagoEm':
                                                                                FieldValue.serverTimestamp(),
                                                                            'DisponivelEm':
                                                                                FieldValue.serverTimestamp(),
                                                                          },
                                                                        ),
                                                                      });
                                                                      _model.criaCorridaAgendada =
                                                                          CorridasRecord
                                                                              .getDocumentFromData({
                                                                        ...createCorridasRecordData(
                                                                          comercio: widget
                                                                              .comercio
                                                                              ?.reference,
                                                                          ponto:
                                                                              currentUserDocument?.ponto,
                                                                          status:
                                                                              'Agendada',
                                                                          detalhe: _model
                                                                              .detalhesTextController
                                                                              .text,
                                                                          cancelado:
                                                                              false,
                                                                          concluido:
                                                                              false,
                                                                          disponivel:
                                                                              false,
                                                                          idPedido: _model
                                                                              .idTextController
                                                                              .text,
                                                                          foneDestino: _model
                                                                              .foneTextController
                                                                              .text,
                                                                          aceito:
                                                                              false,
                                                                          coletado:
                                                                              false,
                                                                          agendado:
                                                                              true,
                                                                          pago:
                                                                              true,
                                                                          valorCorrida: _model
                                                                              .rotaAchada
                                                                              ?.rotaPreco,
                                                                          valorProduto: double.tryParse(_model
                                                                              .prcoPedidoTextController
                                                                              .text),
                                                                          zap: functions.limpaCamposTelefone(_model
                                                                              .foneTextController
                                                                              .text),
                                                                          nomeComercio:
                                                                              valueOrDefault<String>(
                                                                            widget.comercio?.nomeComercio,
                                                                            'Comercio sem nome',
                                                                          ),
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'AggendadoEm':
                                                                                DateTime.now(),
                                                                            'PagoEm':
                                                                                DateTime.now(),
                                                                            'DisponivelEm':
                                                                                DateTime.now(),
                                                                          },
                                                                        ),
                                                                      }, corridasRecordReference);

                                                                      await widget
                                                                          .comercio!
                                                                          .reference
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'qtdCorridasHoje':
                                                                                FieldValue.increment(1),
                                                                            'qtdCorridasTotal':
                                                                                FieldValue.increment(1),
                                                                          },
                                                                        ),
                                                                      });

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Agendar',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          150.0,
                                                                      height:
                                                                          45.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          8.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      hoverColor:
                                                                          Color(
                                                                              0xFFF29200),
                                                                      hoverTextColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      hoverElevation:
                                                                          3.0,
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'buttonOnPageLoadAnimation1']!),
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      if (_model.formKey.currentState ==
                                                                              null ||
                                                                          !_model
                                                                              .formKey
                                                                              .currentState!
                                                                              .validate()) {
                                                                        return;
                                                                      }
                                                                      Navigator.pop(
                                                                          context);

                                                                      var corridasRecordReference = CorridasRecord
                                                                          .collection
                                                                          .doc();
                                                                      await corridasRecordReference
                                                                          .set({
                                                                        ...createCorridasRecordData(
                                                                          comercio: widget
                                                                              .comercio
                                                                              ?.reference,
                                                                          ponto:
                                                                              currentUserDocument?.ponto,
                                                                          status:
                                                                              'Disponivel',
                                                                          detalhe: _model
                                                                              .detalhesTextController
                                                                              .text,
                                                                          cancelado:
                                                                              false,
                                                                          concluido:
                                                                              false,
                                                                          disponivel:
                                                                              true,
                                                                          idPedido: _model
                                                                              .idTextController
                                                                              .text,
                                                                          foneDestino: _model
                                                                              .foneTextController
                                                                              .text,
                                                                          aceito:
                                                                              false,
                                                                          coletado:
                                                                              false,
                                                                          agendado:
                                                                              false,
                                                                          pago:
                                                                              true,
                                                                          valorCorrida: _model
                                                                              .rotaAchada
                                                                              ?.rotaPreco,
                                                                          valorProduto: double.tryParse(_model
                                                                              .prcoPedidoTextController
                                                                              .text),
                                                                          zap: functions.limpaCamposTelefone(_model
                                                                              .foneTextController
                                                                              .text),
                                                                          nomeComercio:
                                                                              valueOrDefault<String>(
                                                                            widget.comercio?.nomeComercio,
                                                                            'Comercio sem nome',
                                                                          ),
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'DisponivelEm':
                                                                                FieldValue.serverTimestamp(),
                                                                            'PagoEm':
                                                                                FieldValue.serverTimestamp(),
                                                                          },
                                                                        ),
                                                                      });
                                                                      _model.criaCorrida =
                                                                          CorridasRecord
                                                                              .getDocumentFromData({
                                                                        ...createCorridasRecordData(
                                                                          comercio: widget
                                                                              .comercio
                                                                              ?.reference,
                                                                          ponto:
                                                                              currentUserDocument?.ponto,
                                                                          status:
                                                                              'Disponivel',
                                                                          detalhe: _model
                                                                              .detalhesTextController
                                                                              .text,
                                                                          cancelado:
                                                                              false,
                                                                          concluido:
                                                                              false,
                                                                          disponivel:
                                                                              true,
                                                                          idPedido: _model
                                                                              .idTextController
                                                                              .text,
                                                                          foneDestino: _model
                                                                              .foneTextController
                                                                              .text,
                                                                          aceito:
                                                                              false,
                                                                          coletado:
                                                                              false,
                                                                          agendado:
                                                                              false,
                                                                          pago:
                                                                              true,
                                                                          valorCorrida: _model
                                                                              .rotaAchada
                                                                              ?.rotaPreco,
                                                                          valorProduto: double.tryParse(_model
                                                                              .prcoPedidoTextController
                                                                              .text),
                                                                          zap: functions.limpaCamposTelefone(_model
                                                                              .foneTextController
                                                                              .text),
                                                                          nomeComercio:
                                                                              valueOrDefault<String>(
                                                                            widget.comercio?.nomeComercio,
                                                                            'Comercio sem nome',
                                                                          ),
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'DisponivelEm':
                                                                                DateTime.now(),
                                                                            'PagoEm':
                                                                                DateTime.now(),
                                                                          },
                                                                        ),
                                                                      }, corridasRecordReference);

                                                                      await widget
                                                                          .comercio!
                                                                          .reference
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'qtdCorridasHoje':
                                                                                FieldValue.increment(1),
                                                                            'qtdCorridasTotal':
                                                                                FieldValue.increment(1),
                                                                          },
                                                                        ),
                                                                      });
                                                                      triggerPushNotification(
                                                                        notificationTitle:
                                                                            'Nova corrida',
                                                                        notificationText:
                                                                            '${widget.comercio?.nomeComercio}Enviou uma nova corrida: ',
                                                                        notificationSound:
                                                                            'default',
                                                                        userRefs: containerUsersRecordList
                                                                            .map((e) =>
                                                                                e.reference)
                                                                            .toList(),
                                                                        initialPageName:
                                                                            'Motoboy',
                                                                        parameterData: {},
                                                                      );

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Solicitar Agora',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          150.0,
                                                                      height:
                                                                          50.0,
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
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
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      elevation:
                                                                          8.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      hoverColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      hoverBorderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      hoverTextColor:
                                                                          Color(
                                                                              0xFFF29200),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'buttonOnPageLoadAnimation2']!),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    CorridasRecord>>(
                                                              stream:
                                                                  queryCorridasRecord(
                                                                queryBuilder:
                                                                    (corridasRecord) =>
                                                                        corridasRecord
                                                                            .where(
                                                                              'Comercio',
                                                                              isEqualTo: widget.comercio?.reference,
                                                                            )
                                                                            .where(
                                                                              'Status',
                                                                              isEqualTo: 'Aceita',
                                                                            ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              16.0),
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
                                                                            Color(0xFFF29200),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<CorridasRecord>
                                                                    columnCorridasRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
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
                                                                      child: StreamBuilder<
                                                                          UsersRecord>(
                                                                        stream:
                                                                            UsersRecord.getDocument(columnCorridasRecord.motoboy!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          final containerUsersRecord =
                                                                              snapshot.data!;
                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              if (_model.formKey.currentState == null || !_model.formKey.currentState!.validate()) {
                                                                                return;
                                                                              }
                                                                              Navigator.pop(context);

                                                                              var corridasRecordReference = CorridasRecord.collection.doc();
                                                                              await corridasRecordReference.set({
                                                                                ...createCorridasRecordData(
                                                                                  comercio: widget.comercio?.reference,
                                                                                  ponto: currentUserDocument?.ponto,
                                                                                  status: 'Aceita',
                                                                                  detalhe: _model.detalhesTextController.text,
                                                                                  cancelado: false,
                                                                                  concluido: false,
                                                                                  disponivel: true,
                                                                                  idPedido: _model.idTextController.text,
                                                                                  foneDestino: _model.foneTextController.text,
                                                                                  aceito: true,
                                                                                  coletado: false,
                                                                                  agendado: false,
                                                                                  pago: true,
                                                                                  valorCorrida: _model.rotaAchada?.rotaPreco,
                                                                                  valorProduto: double.tryParse(_model.prcoPedidoTextController.text),
                                                                                  zap: functions.limpaCamposTelefone(_model.foneTextController.text),
                                                                                  nomeComercio: valueOrDefault<String>(
                                                                                    widget.comercio?.nomeComercio,
                                                                                    'Comercio sem nome',
                                                                                  ),
                                                                                  motoboy: containerUsersRecord.reference,
                                                                                  nomeMotoboy: containerUsersRecord.displayName,
                                                                                ),
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'DisponivelEm': FieldValue.serverTimestamp(),
                                                                                    'PagoEm': FieldValue.serverTimestamp(),
                                                                                    'AceitoEm': FieldValue.serverTimestamp(),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              _model.criaCorridaCopy = CorridasRecord.getDocumentFromData({
                                                                                ...createCorridasRecordData(
                                                                                  comercio: widget.comercio?.reference,
                                                                                  ponto: currentUserDocument?.ponto,
                                                                                  status: 'Aceita',
                                                                                  detalhe: _model.detalhesTextController.text,
                                                                                  cancelado: false,
                                                                                  concluido: false,
                                                                                  disponivel: true,
                                                                                  idPedido: _model.idTextController.text,
                                                                                  foneDestino: _model.foneTextController.text,
                                                                                  aceito: true,
                                                                                  coletado: false,
                                                                                  agendado: false,
                                                                                  pago: true,
                                                                                  valorCorrida: _model.rotaAchada?.rotaPreco,
                                                                                  valorProduto: double.tryParse(_model.prcoPedidoTextController.text),
                                                                                  zap: functions.limpaCamposTelefone(_model.foneTextController.text),
                                                                                  nomeComercio: valueOrDefault<String>(
                                                                                    widget.comercio?.nomeComercio,
                                                                                    'Comercio sem nome',
                                                                                  ),
                                                                                  motoboy: containerUsersRecord.reference,
                                                                                  nomeMotoboy: containerUsersRecord.displayName,
                                                                                ),
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'DisponivelEm': DateTime.now(),
                                                                                    'PagoEm': DateTime.now(),
                                                                                    'AceitoEm': DateTime.now(),
                                                                                  },
                                                                                ),
                                                                              }, corridasRecordReference);

                                                                              await containerUsersRecord.reference.update(createUsersRecordData(
                                                                                nafila: false,
                                                                                impedido: true,
                                                                                escolhido: true,
                                                                              ));

                                                                              await widget.comercio!.reference.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'qtdCorridasHoje': FieldValue.increment(1),
                                                                                    'qtdCorridasTotal': FieldValue.increment(1),
                                                                                  },
                                                                                ),
                                                                              });

                                                                              await currentUserDocument!.ponto!.update({
                                                                                ...mapToFirestore(
                                                                                  {
                                                                                    'FilaMotoboys': FieldValue.arrayRemove([
                                                                                      containerUsersRecord.reference
                                                                                    ]),
                                                                                  },
                                                                                ),
                                                                              });
                                                                              triggerPushNotification(
                                                                                notificationTitle: 'Escolhido',
                                                                                notificationText: 'O comercio: ${widget.comercio?.nomeComercio}, te escolheu para uma entrega',
                                                                                userRefs: [
                                                                                  containerUsersRecord.reference
                                                                                ],
                                                                                initialPageName: 'Motoboy',
                                                                                parameterData: {},
                                                                              );

                                                                              setState(() {});
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.96,
                                                                              decoration: BoxDecoration(
                                                                                boxShadow: [
                                                                                  BoxShadow(
                                                                                    blurRadius: 4.0,
                                                                                    color: Color(0x33000000),
                                                                                    offset: Offset(
                                                                                      0.0,
                                                                                      2.0,
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                                gradient: LinearGradient(
                                                                                  colors: [
                                                                                    Color(0xFF39EF7C),
                                                                                    Color(0xFF259222)
                                                                                  ],
                                                                                  stops: [
                                                                                    0.0,
                                                                                    1.0
                                                                                  ],
                                                                                  begin: AlignmentDirectional(1.0, 0.0),
                                                                                  end: AlignmentDirectional(-1.0, 0),
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(12.0),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsets.all(2.0),
                                                                                child: SingleChildScrollView(
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsets.all(8.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Card(
                                                                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(40.0),
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsets.all(2.0),
                                                                                                    child: Container(
                                                                                                      width: 50.0,
                                                                                                      height: 50.0,
                                                                                                      clipBehavior: Clip.antiAlias,
                                                                                                      decoration: BoxDecoration(
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                      child: Image.network(
                                                                                                        valueOrDefault<String>(
                                                                                                          containerUsersRecord.photoUrl,
                                                                                                          'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/usre360.png?alt=media&token=4bb239e7-3698-4030-be71-d0e0e248548a',
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Text(
                                                                                                      containerUsersRecord.displayName,
                                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                            fontFamily: 'Outfit',
                                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                      child: RatingBarIndicator(
                                                                                                        itemBuilder: (context, index) => Icon(
                                                                                                          Icons.star_rounded,
                                                                                                          color: FlutterFlowTheme.of(context).warning,
                                                                                                        ),
                                                                                                        direction: Axis.horizontal,
                                                                                                        rating: 5.0,
                                                                                                        unratedColor: Color(0xFF95A1AC),
                                                                                                        itemCount: 5,
                                                                                                        itemSize: 24.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Container(
                                                                                                decoration: BoxDecoration(),
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Wrap(
                                                                                                  spacing: 0.0,
                                                                                                  runSpacing: 0.0,
                                                                                                  alignment: WrapAlignment.center,
                                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                  direction: Axis.horizontal,
                                                                                                  runAlignment: WrapAlignment.start,
                                                                                                  verticalDirection: VerticalDirection.down,
                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                  children: [
                                                                                                    FaIcon(
                                                                                                      FontAwesomeIcons.motorcycle,
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      size: 36.0,
                                                                                                    ),
                                                                                                    AutoSizeText(
                                                                                                      'Casadinha',
                                                                                                      minFontSize: 10.0,
                                                                                                      style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                            fontFamily: 'Outfit',
                                                                                                            letterSpacing: 0.0,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ],
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
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        20.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final userfila =
                                                                    containerUsersRecordList
                                                                        .where((e) =>
                                                                            e.nafila)
                                                                        .toList();
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: List.generate(
                                                                      userfila
                                                                          .length,
                                                                      (userfilaIndex) {
                                                                    final userfilaItem =
                                                                        userfila[
                                                                            userfilaIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          8.0,
                                                                          4.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          if (_model.formKey.currentState == null ||
                                                                              !_model.formKey.currentState!.validate()) {
                                                                            return;
                                                                          }
                                                                          Navigator.pop(
                                                                              context);

                                                                          var corridasRecordReference = CorridasRecord
                                                                              .collection
                                                                              .doc();
                                                                          await corridasRecordReference
                                                                              .set({
                                                                            ...createCorridasRecordData(
                                                                              comercio: widget.comercio?.reference,
                                                                              ponto: currentUserDocument?.ponto,
                                                                              status: 'Aceita',
                                                                              detalhe: _model.detalhesTextController.text,
                                                                              cancelado: false,
                                                                              concluido: false,
                                                                              disponivel: true,
                                                                              idPedido: _model.idTextController.text,
                                                                              foneDestino: _model.foneTextController.text,
                                                                              aceito: true,
                                                                              coletado: false,
                                                                              agendado: false,
                                                                              pago: true,
                                                                              valorCorrida: _model.rotaAchada?.rotaPreco,
                                                                              valorProduto: double.tryParse(_model.prcoPedidoTextController.text),
                                                                              zap: functions.limpaCamposTelefone(_model.foneTextController.text),
                                                                              nomeComercio: valueOrDefault<String>(
                                                                                widget.comercio?.nomeComercio,
                                                                                'Comercio sem nome',
                                                                              ),
                                                                              motoboy: userfilaItem.reference,
                                                                              nomeMotoboy: userfilaItem.displayName,
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'DisponivelEm': FieldValue.serverTimestamp(),
                                                                                'PagoEm': FieldValue.serverTimestamp(),
                                                                                'AceitoEm': FieldValue.serverTimestamp(),
                                                                              },
                                                                            ),
                                                                          });
                                                                          _model.criaCorridaFila =
                                                                              CorridasRecord.getDocumentFromData({
                                                                            ...createCorridasRecordData(
                                                                              comercio: widget.comercio?.reference,
                                                                              ponto: currentUserDocument?.ponto,
                                                                              status: 'Aceita',
                                                                              detalhe: _model.detalhesTextController.text,
                                                                              cancelado: false,
                                                                              concluido: false,
                                                                              disponivel: true,
                                                                              idPedido: _model.idTextController.text,
                                                                              foneDestino: _model.foneTextController.text,
                                                                              aceito: true,
                                                                              coletado: false,
                                                                              agendado: false,
                                                                              pago: true,
                                                                              valorCorrida: _model.rotaAchada?.rotaPreco,
                                                                              valorProduto: double.tryParse(_model.prcoPedidoTextController.text),
                                                                              zap: functions.limpaCamposTelefone(_model.foneTextController.text),
                                                                              nomeComercio: valueOrDefault<String>(
                                                                                widget.comercio?.nomeComercio,
                                                                                'Comercio sem nome',
                                                                              ),
                                                                              motoboy: userfilaItem.reference,
                                                                              nomeMotoboy: userfilaItem.displayName,
                                                                            ),
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'DisponivelEm': DateTime.now(),
                                                                                'PagoEm': DateTime.now(),
                                                                                'AceitoEm': DateTime.now(),
                                                                              },
                                                                            ),
                                                                          }, corridasRecordReference);

                                                                          await userfilaItem
                                                                              .reference
                                                                              .update(createUsersRecordData(
                                                                            nafila:
                                                                                false,
                                                                            impedido:
                                                                                true,
                                                                            escolhido:
                                                                                true,
                                                                          ));

                                                                          await widget
                                                                              .comercio!
                                                                              .reference
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'qtdCorridasHoje': FieldValue.increment(1),
                                                                                'qtdCorridasTotal': FieldValue.increment(1),
                                                                              },
                                                                            ),
                                                                          });

                                                                          await currentUserDocument!
                                                                              .ponto!
                                                                              .update({
                                                                            ...mapToFirestore(
                                                                              {
                                                                                'FilaMotoboys': FieldValue.arrayRemove([
                                                                                  userfilaItem.reference
                                                                                ]),
                                                                              },
                                                                            ),
                                                                          });
                                                                          triggerPushNotification(
                                                                            notificationTitle:
                                                                                'Escolhido',
                                                                            notificationText:
                                                                                'O comercio: ${widget.comercio?.nomeComercio}, te escolheu para uma entrega',
                                                                            userRefs: [
                                                                              userfilaItem.reference
                                                                            ],
                                                                            initialPageName:
                                                                                'Motoboy',
                                                                            parameterData: {},
                                                                          );

                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.96,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 4.0,
                                                                                color: Color(0x33000000),
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
                                                                              Padding(
                                                                            padding:
                                                                                EdgeInsets.all(2.0),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Card(
                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                                              shape: RoundedRectangleBorder(
                                                                                                borderRadius: BorderRadius.circular(40.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.all(2.0),
                                                                                                child: Container(
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                  decoration: BoxDecoration(
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                  child: Image.network(
                                                                                                    valueOrDefault<String>(
                                                                                                      userfilaItem.photoUrl,
                                                                                                      'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/usre360.png?alt=media&token=4bb239e7-3698-4030-be71-d0e0e248548a',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  userfilaItem.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                                        fontFamily: 'Outfit',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                  child: RatingBarIndicator(
                                                                                                    itemBuilder: (context, index) => Icon(
                                                                                                      Icons.star_rounded,
                                                                                                      color: FlutterFlowTheme.of(context).warning,
                                                                                                    ),
                                                                                                    direction: Axis.horizontal,
                                                                                                    rating: 5.0,
                                                                                                    unratedColor: Color(0xFF95A1AC),
                                                                                                    itemCount: 5,
                                                                                                    itemSize: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
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
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
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
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
