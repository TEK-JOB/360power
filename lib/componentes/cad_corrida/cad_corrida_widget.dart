import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(40.0, 0.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(40.0, 0.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(40.0, 0.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(40.0, 0.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(40.0, 0.0),
            end: const Offset(0.0, 0.0),
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
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
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
            begin: const Offset(0.8, 0.8),
            end: const Offset(1.0, 1.0),
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
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4.0,
            sigmaY: 6.0,
          ),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0x4D000000),
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: StreamBuilder<List<BairroRecord>>(
                              stream: queryBairroRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return const Center(
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
                                List<BairroRecord> containerBairroRecordList =
                                    snapshot.data!;
                                return Container(
                                  width: double.infinity,
                                  height: 850.0,
                                  constraints: const BoxConstraints(
                                    maxWidth: 530.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x19000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: const BoxDecoration(
                                                      color: Color(0xFFF02E4B),
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
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: const Icon(
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
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 16.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Preencha os campos abaixo e clique em solicitar',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation2']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.idTextController,
                                                    focusNode:
                                                        _model.idFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'ID',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFFF29200),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Insira o ID',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFF29200),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(18.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    validator: _model
                                                        .idTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation1']!),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: Autocomplete<String>(
                                                    initialValue:
                                                        const TextEditingValue(),
                                                    optionsBuilder:
                                                        (textEditingValue) {
                                                      if (textEditingValue
                                                              .text ==
                                                          '') {
                                                        return const Iterable<
                                                            String>.empty();
                                                      }
                                                      return containerBairroRecordList
                                                          .map((e) => e.nome)
                                                          .toList()
                                                          .where((option) {
                                                        final lowercaseOption =
                                                            option
                                                                .toLowerCase();
                                                        return lowercaseOption
                                                            .contains(
                                                                textEditingValue
                                                                    .text
                                                                    .toLowerCase());
                                                      });
                                                    },
                                                    optionsViewBuilder:
                                                        (context, onSelected,
                                                            options) {
                                                      return AutocompleteOptionsList(
                                                        textFieldKey:
                                                            _model.bairroKey,
                                                        textController: _model
                                                            .bairroTextController!,
                                                        options:
                                                            options.toList(),
                                                        onSelected: onSelected,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        textHighlightStyle:
                                                            const TextStyle(),
                                                        elevation: 4.0,
                                                        optionBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        optionHighlightColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        maxHeight: 200.0,
                                                      );
                                                    },
                                                    onSelected:
                                                        (String selection) {
                                                      setState(() => _model
                                                              .bairroSelectedOption =
                                                          selection);
                                                      FocusScope.of(context)
                                                          .unfocus();
                                                    },
                                                    fieldViewBuilder: (
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
                                                        _model.bairroFocusNode!
                                                            .addListener(() =>
                                                                setState(
                                                                    () {}));
                                                      }
                                                      _model.bairroTextController =
                                                          textEditingController;
                                                      return TextFormField(
                                                        key: _model.bairroKey,
                                                        controller:
                                                            textEditingController,
                                                        focusNode: focusNode,
                                                        onEditingComplete:
                                                            onEditingComplete,
                                                        onChanged: (_) =>
                                                            EasyDebounce
                                                                .debounce(
                                                          '_model.bairroTextController',
                                                          const Duration(
                                                              milliseconds:
                                                                  2000),
                                                          () async {
                                                            _model.docBairroDestino =
                                                                containerBairroRecordList
                                                                    .where((e) =>
                                                                        e.nome ==
                                                                        _model
                                                                            .bairroSelectedOption)
                                                                    .toList()
                                                                    .first;
                                                            setState(() {});
                                                            _model.acheiRota =
                                                                await queryRotaRecordOnce(
                                                              parent:
                                                                  currentUserDocument
                                                                      ?.ponto,
                                                              queryBuilder:
                                                                  (rotaRecord) =>
                                                                      rotaRecord
                                                                          .where(
                                                                'CodigoRota',
                                                                isEqualTo:
                                                                    '${widget.docBairroOrigem?.codigoBairro}${_model.docBairroDestino?.codigoBairro}',
                                                              ),
                                                              singleRecord:
                                                                  true,
                                                            ).then((s) => s
                                                                    .firstOrNull);
                                                            _model.rotaAchada =
                                                                _model
                                                                    .acheiRota;
                                                            setState(() {});

                                                            setState(() {});
                                                          },
                                                        ),
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Bairro',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFFF29200),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          hintText:
                                                              'Pesquise o bairro do cliente',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        36.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xFFF29200),
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        36.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        36.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 2.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        36.0),
                                                          ),
                                                          contentPadding:
                                                              const EdgeInsets.all(
                                                                  18.0),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        validator: _model
                                                            .bairroTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      );
                                                    },
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation2']!),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .foneTextController,
                                                    focusNode:
                                                        _model.foneFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Telefone',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFFF29200),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'Telefone do cliente',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFF29200),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(18.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .foneTextControllerValidator
                                                        .asValidator(context),
                                                    inputFormatters: [
                                                      _model.foneMask
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation3']!),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .prcoPedidoTextController,
                                                    focusNode: _model
                                                        .prcoPedidoFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Valor produto',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFFF29200),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'Adicione o valor do produto',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFF29200),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(18.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    validator: _model
                                                        .prcoPedidoTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation4']!),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child:
                                                        SwitchListTile.adaptive(
                                                      value: _model
                                                              .switchListTileValue ??=
                                                          false,
                                                      onChanged:
                                                          (newValue) async {
                                                        setState(() => _model
                                                                .switchListTileValue =
                                                            newValue);
                                                        if (newValue) {
                                                          _model.pago = true;
                                                          setState(() {});
                                                        } else {
                                                          _model.pago = false;
                                                          setState(() {});
                                                        }
                                                      },
                                                      title: Text(
                                                        _model.pago == true
                                                            ? 'Pago'
                                                            : 'Receber',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: _model
                                                                              .pago ==
                                                                          true
                                                                      ? const Color(
                                                                          0xFF35E70E)
                                                                      : const Color(
                                                                          0xFFF20D3D),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      subtitle: Text(
                                                        _model.pago == true
                                                            ? 'O produto ja foi pago ao comercio'
                                                            : 'o comercio ainda não recebeu essa entrega',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: _model
                                                                              .pago ==
                                                                          true
                                                                      ? const Color(
                                                                          0xFF48903C)
                                                                      : const Color(
                                                                          0xFF902B3F),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      tileColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      activeColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      activeTrackColor:
                                                          const Color(0xFFF29200),
                                                      dense: false,
                                                      controlAffinity:
                                                          ListTileControlAffinity
                                                              .trailing,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .detalhesTextController,
                                                    focusNode: _model
                                                        .detalhesFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Detalhes',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: const Color(
                                                                    0xFFF29200),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'COLE OU DIGITE\n\nNOME DO CLIENTE:\n\nENDEREÇO:\n\nREFERÊNCIA;\n\nVALOR DO PRODUTO:\n\nFORMA DE PAGAMENTO\n\nNUMERO DO TELEFONE\n\n\n\n',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0xFFF29200),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(36.0),
                                                      ),
                                                      contentPadding:
                                                          const EdgeInsets.all(18.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textAlign: TextAlign.start,
                                                    maxLines: 15,
                                                    validator: _model
                                                        .detalhesTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation5']!),
                                              ),
                                              Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Valor da corrida: ',
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
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                _model
                                                                    .rotaAchada
                                                                    ?.rotaPreco,
                                                                formatType:
                                                                    FormatType
                                                                        .decimal,
                                                                decimalType:
                                                                    DecimalType
                                                                        .commaDecimal,
                                                                currency:
                                                                    'R\$ ',
                                                              ),
                                                              '0',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  8.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (_model.formKey
                                                                          .currentState ==
                                                                      null ||
                                                                  !_model
                                                                      .formKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                return;
                                                              }

                                                              var corridasRecordReference =
                                                                  CorridasRecord
                                                                      .collection
                                                                      .doc();
                                                              await corridasRecordReference
                                                                  .set({
                                                                ...createCorridasRecordData(
                                                                  comercio: widget
                                                                      .comercio
                                                                      ?.reference,
                                                                  ponto:
                                                                      currentUserDocument
                                                                          ?.ponto,
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
                                                                  foneDestino:
                                                                      _model
                                                                          .foneTextController
                                                                          .text,
                                                                  aceito: false,
                                                                  coletado:
                                                                      false,
                                                                  agendado:
                                                                      true,
                                                                  pago: _model
                                                                      .switchListTileValue,
                                                                  pagoEm: _model
                                                                              .switchListTileValue ==
                                                                          true
                                                                      ? getCurrentTimestamp
                                                                      : null,
                                                                  valorCorrida: _model
                                                                      .rotaAchada
                                                                      ?.rotaPreco,
                                                                  valorProduto:
                                                                      double.tryParse(_model
                                                                          .prcoPedidoTextController
                                                                          .text),
                                                                  zap: functions
                                                                      .limpaCamposTelefone(_model
                                                                          .foneTextController
                                                                          .text),
                                                                  nomeComercio:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    widget
                                                                        .comercio
                                                                        ?.nomeComercio,
                                                                    'Comercio sem nome',
                                                                  ),
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'AggendadoEm':
                                                                        FieldValue
                                                                            .serverTimestamp(),
                                                                    'DisponivelEm':
                                                                        FieldValue
                                                                            .serverTimestamp(),
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
                                                                      currentUserDocument
                                                                          ?.ponto,
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
                                                                  foneDestino:
                                                                      _model
                                                                          .foneTextController
                                                                          .text,
                                                                  aceito: false,
                                                                  coletado:
                                                                      false,
                                                                  agendado:
                                                                      true,
                                                                  pago: _model
                                                                      .switchListTileValue,
                                                                  pagoEm: _model
                                                                              .switchListTileValue ==
                                                                          true
                                                                      ? getCurrentTimestamp
                                                                      : null,
                                                                  valorCorrida: _model
                                                                      .rotaAchada
                                                                      ?.rotaPreco,
                                                                  valorProduto:
                                                                      double.tryParse(_model
                                                                          .prcoPedidoTextController
                                                                          .text),
                                                                  zap: functions
                                                                      .limpaCamposTelefone(_model
                                                                          .foneTextController
                                                                          .text),
                                                                  nomeComercio:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    widget
                                                                        .comercio
                                                                        ?.nomeComercio,
                                                                    'Comercio sem nome',
                                                                  ),
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'AggendadoEm':
                                                                        DateTime
                                                                            .now(),
                                                                    'DisponivelEm':
                                                                        DateTime
                                                                            .now(),
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
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'qtdCorridasTotal':
                                                                        FieldValue
                                                                            .increment(1),
                                                                  },
                                                                ),
                                                              });
                                                              Navigator.pop(
                                                                  context);

                                                              setState(() {});
                                                            },
                                                            text: 'Agendar',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 150.0,
                                                              height: 45.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              elevation: 8.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              hoverColor: const Color(
                                                                  0xFFF29200),
                                                              hoverTextColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                                              const EdgeInsets.all(
                                                                  8.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              if (_model.formKey
                                                                          .currentState ==
                                                                      null ||
                                                                  !_model
                                                                      .formKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                return;
                                                              }

                                                              var corridasRecordReference =
                                                                  CorridasRecord
                                                                      .collection
                                                                      .doc();
                                                              await corridasRecordReference
                                                                  .set({
                                                                ...createCorridasRecordData(
                                                                  comercio: widget
                                                                      .comercio
                                                                      ?.reference,
                                                                  ponto:
                                                                      currentUserDocument
                                                                          ?.ponto,
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
                                                                  foneDestino:
                                                                      _model
                                                                          .foneTextController
                                                                          .text,
                                                                  aceito: false,
                                                                  coletado:
                                                                      false,
                                                                  agendado:
                                                                      false,
                                                                  pago: _model
                                                                      .switchListTileValue,
                                                                  pagoEm: _model
                                                                              .switchListTileValue ==
                                                                          true
                                                                      ? getCurrentTimestamp
                                                                      : null,
                                                                  valorCorrida: _model
                                                                      .rotaAchada
                                                                      ?.rotaPreco,
                                                                  valorProduto:
                                                                      double.tryParse(_model
                                                                          .prcoPedidoTextController
                                                                          .text),
                                                                  zap: functions
                                                                      .limpaCamposTelefone(_model
                                                                          .foneTextController
                                                                          .text),
                                                                  nomeComercio:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    widget
                                                                        .comercio
                                                                        ?.nomeComercio,
                                                                    'Comercio sem nome',
                                                                  ),
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'DisponivelEm':
                                                                        FieldValue
                                                                            .serverTimestamp(),
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
                                                                      currentUserDocument
                                                                          ?.ponto,
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
                                                                  foneDestino:
                                                                      _model
                                                                          .foneTextController
                                                                          .text,
                                                                  aceito: false,
                                                                  coletado:
                                                                      false,
                                                                  agendado:
                                                                      false,
                                                                  pago: _model
                                                                      .switchListTileValue,
                                                                  pagoEm: _model
                                                                              .switchListTileValue ==
                                                                          true
                                                                      ? getCurrentTimestamp
                                                                      : null,
                                                                  valorCorrida: _model
                                                                      .rotaAchada
                                                                      ?.rotaPreco,
                                                                  valorProduto:
                                                                      double.tryParse(_model
                                                                          .prcoPedidoTextController
                                                                          .text),
                                                                  zap: functions
                                                                      .limpaCamposTelefone(_model
                                                                          .foneTextController
                                                                          .text),
                                                                  nomeComercio:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    widget
                                                                        .comercio
                                                                        ?.nomeComercio,
                                                                    'Comercio sem nome',
                                                                  ),
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'DisponivelEm':
                                                                        DateTime
                                                                            .now(),
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
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'qtdCorridasTotal':
                                                                        FieldValue
                                                                            .increment(1),
                                                                  },
                                                                ),
                                                              });
                                                              Navigator.pop(
                                                                  context);

                                                              setState(() {});
                                                            },
                                                            text:
                                                                'Solicitar Agora',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 150.0,
                                                              height: 50.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: const Color(
                                                                  0xFFF29200),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              elevation: 8.0,
                                                              borderSide:
                                                                  const BorderSide(
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                width: 1.0,
                                                              ),
                                                              hoverTextColor:
                                                                  const Color(
                                                                      0xFFF29200),
                                                            ),
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'buttonOnPageLoadAnimation2']!),
                                                        ),
                                                      ],
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
        ),
      ),
    );
  }
}
