import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'cad_pix_model.dart';
export 'cad_pix_model.dart';

class CadPixWidget extends StatefulWidget {
  const CadPixWidget({
    super.key,
    required this.comercioPix,
  });

  final DocumentReference? comercioPix;

  @override
  State<CadPixWidget> createState() => _CadPixWidgetState();
}

class _CadPixWidgetState extends State<CadPixWidget>
    with TickerProviderStateMixin {
  late CadPixModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CadPixModel());

    _model.bancoTextController ??= TextEditingController();
    _model.bancoFocusNode ??= FocusNode();

    _model.nomePixTextController ??= TextEditingController();
    _model.nomePixFocusNode ??= FocusNode();

    _model.chaveOutraTextController ??= TextEditingController();
    _model.chaveOutraFocusNode ??= FocusNode();

    _model.chaveCelularTextController ??= TextEditingController();
    _model.chaveCelularFocusNode ??= FocusNode();

    _model.chaveCNPJTextController ??= TextEditingController();
    _model.chaveCNPJFocusNode ??= FocusNode();

    _model.chaveCpfTextController ??= TextEditingController();
    _model.chaveCpfFocusNode ??= FocusNode();

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
            begin: const Offset(20.0, 0.0),
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
      'textFieldOnPageLoadAnimation6': AnimationInfo(
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
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
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
            begin: const Offset(50.0, 0.0),
            end: const Offset(0.0, 0.0),
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 750.0,
            maxHeight: 850.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Cadastro de pix',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Text(
                    'Adicione os dados da sua chave pix, onde deseja receber as entregas dos motoboys',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ).animateOnPageLoad(
                      animationsMap['textOnPageLoadAnimation']!),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: SizedBox(
                      width: 300.0,
                      child: TextFormField(
                        controller: _model.bancoTextController,
                        focusNode: _model.bancoFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Banco',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFF29200),
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'nome do banco que vai receber',
                          hintStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFF29200),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(36.0),
                          ),
                          contentPadding: const EdgeInsets.all(18.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.start,
                        validator: _model.bancoTextControllerValidator
                            .asValidator(context),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['textFieldOnPageLoadAnimation1']!),
                  ),
                  SizedBox(
                    width: 300.0,
                    child: TextFormField(
                      controller: _model.nomePixTextController,
                      focusNode: _model.nomePixFocusNode,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nome da conta',
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFF29200),
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'nome do cliente que vai receber',
                        hintStyle: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(36.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFF29200),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(36.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(36.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(36.0),
                        ),
                        contentPadding: const EdgeInsets.all(18.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      validator: _model.nomePixTextControllerValidator
                          .asValidator(context),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['textFieldOnPageLoadAnimation2']!),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterFlowDropDown<String>(
                        controller: _model.dDtipoValueController ??=
                            FormFieldController<String>(null),
                        options: const [
                          'E-mail',
                          'CPF',
                          'CNPJ',
                          'Celular',
                          'Chave aleatória'
                        ],
                        onChanged: (val) async {
                          setState(() => _model.dDtipoValue = val);
                          if (_model.dDtipoValue == 'CPF') {
                            _model.tipo = 1;
                            setState(() {});
                          } else if (_model.dDtipoValue == 'CNPJ') {
                            _model.tipo = 2;
                            setState(() {});
                          } else if (_model.dDtipoValue == 'Celular') {
                            _model.tipo = 3;
                            setState(() {});
                          } else {
                            _model.tipo = 4;
                            setState(() {});
                          }
                        },
                        width: 300.0,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Escolha um tipo de  chave pix',
                        icon: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xFFF8B400),
                          size: 24.0,
                        ),
                        fillColor: const Color(0x00FFFFFF),
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).secondaryText,
                        borderWidth: 2.0,
                        borderRadius: 24.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                        labelText: 'Tipo de chave',
                        labelTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFF8B400),
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_model.tipo == 4)
                        Expanded(
                          child: SizedBox(
                            width: 300.0,
                            child: TextFormField(
                              controller: _model.chaveOutraTextController,
                              focusNode: _model.chaveOutraFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Chave',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFF29200),
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Digite ou cole a chave pix',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFF29200),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                contentPadding: const EdgeInsets.all(18.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model
                                  .chaveOutraTextControllerValidator
                                  .asValidator(context),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation3']!),
                        ),
                      if (_model.tipo == 3)
                        Expanded(
                          child: SizedBox(
                            width: 300.0,
                            child: TextFormField(
                              controller: _model.chaveCelularTextController,
                              focusNode: _model.chaveCelularFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Chave',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFF29200),
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Digite ou cole a chave pix',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFF29200),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                contentPadding: const EdgeInsets.all(18.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              validator: _model
                                  .chaveCelularTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [_model.chaveCelularMask],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation4']!),
                        ),
                      if (_model.tipo == 2)
                        Expanded(
                          child: SizedBox(
                            width: 300.0,
                            child: TextFormField(
                              controller: _model.chaveCNPJTextController,
                              focusNode: _model.chaveCNPJFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Chave',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFF29200),
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Digite ou cole a chave pix',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFF29200),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                contentPadding: const EdgeInsets.all(18.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              validator: _model.chaveCNPJTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [_model.chaveCNPJMask],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation5']!),
                        ),
                      if (_model.tipo == 1)
                        Expanded(
                          child: SizedBox(
                            width: 300.0,
                            child: TextFormField(
                              controller: _model.chaveCpfTextController,
                              focusNode: _model.chaveCpfFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Chave',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFFF29200),
                                      letterSpacing: 0.0,
                                    ),
                                hintText: 'Digite ou cole a chave pix',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFFF29200),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(36.0),
                                ),
                                contentPadding: const EdgeInsets.all(18.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              validator: _model.chaveCpfTextControllerValidator
                                  .asValidator(context),
                              inputFormatters: [_model.chaveCpfMask],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation6']!),
                        ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
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
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFF29200),
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation1']!),
                        FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            if (_model.tipo == 1) {
                              var pixRecordReference1 =
                                  PixRecord.collection.doc();
                              await pixRecordReference1.set(createPixRecordData(
                                banco: _model.bancoTextController.text,
                                tipo: _model.dDtipoValue,
                                comercioPix: widget.comercioPix,
                                nomePix: _model.nomePixTextController.text,
                                chavePix: functions.limpaCamposTelefone(
                                    _model.chaveCpfTextController.text),
                                verChave: _model.chaveCpfTextController.text,
                              ));
                              _model.pix1 = PixRecord.getDocumentFromData(
                                  createPixRecordData(
                                    banco: _model.bancoTextController.text,
                                    tipo: _model.dDtipoValue,
                                    comercioPix: widget.comercioPix,
                                    nomePix: _model.nomePixTextController.text,
                                    chavePix: functions.limpaCamposTelefone(
                                        _model.chaveCpfTextController.text),
                                    verChave:
                                        _model.chaveCpfTextController.text,
                                  ),
                                  pixRecordReference1);

                              await widget.comercioPix!
                                  .update(createComerciosRecordData(
                                pix: _model.pix1?.reference,
                              ));
                              Navigator.pop(context);
                            } else if (_model.tipo == 2) {
                              var pixRecordReference2 =
                                  PixRecord.collection.doc();
                              await pixRecordReference2.set(createPixRecordData(
                                banco: _model.bancoTextController.text,
                                tipo: _model.dDtipoValue,
                                comercioPix: widget.comercioPix,
                                nomePix: _model.nomePixTextController.text,
                                chavePix: functions.limpaCamposTelefone(
                                    _model.chaveCNPJTextController.text),
                                verChave: _model.chaveCNPJTextController.text,
                              ));
                              _model.pix2 = PixRecord.getDocumentFromData(
                                  createPixRecordData(
                                    banco: _model.bancoTextController.text,
                                    tipo: _model.dDtipoValue,
                                    comercioPix: widget.comercioPix,
                                    nomePix: _model.nomePixTextController.text,
                                    chavePix: functions.limpaCamposTelefone(
                                        _model.chaveCNPJTextController.text),
                                    verChave:
                                        _model.chaveCNPJTextController.text,
                                  ),
                                  pixRecordReference2);

                              await widget.comercioPix!
                                  .update(createComerciosRecordData(
                                pix: _model.pix2?.reference,
                              ));
                              Navigator.pop(context);
                            } else if (_model.tipo == 3) {
                              var pixRecordReference3 =
                                  PixRecord.collection.doc();
                              await pixRecordReference3.set(createPixRecordData(
                                banco: _model.bancoTextController.text,
                                tipo: _model.dDtipoValue,
                                comercioPix: widget.comercioPix,
                                nomePix: _model.nomePixTextController.text,
                                chavePix: functions.limpaCamposTelefone(
                                    _model.chaveCelularTextController.text),
                                verChave:
                                    _model.chaveCelularTextController.text,
                              ));
                              _model.pix3 = PixRecord.getDocumentFromData(
                                  createPixRecordData(
                                    banco: _model.bancoTextController.text,
                                    tipo: _model.dDtipoValue,
                                    comercioPix: widget.comercioPix,
                                    nomePix: _model.nomePixTextController.text,
                                    chavePix: functions.limpaCamposTelefone(
                                        _model.chaveCelularTextController.text),
                                    verChave:
                                        _model.chaveCelularTextController.text,
                                  ),
                                  pixRecordReference3);

                              await widget.comercioPix!
                                  .update(createComerciosRecordData(
                                pix: _model.pix3?.reference,
                              ));
                              Navigator.pop(context);
                            } else {
                              var pixRecordReference4 =
                                  PixRecord.collection.doc();
                              await pixRecordReference4.set(createPixRecordData(
                                banco: _model.bancoTextController.text,
                                tipo: _model.dDtipoValue,
                                comercioPix: widget.comercioPix,
                                nomePix: _model.nomePixTextController.text,
                                chavePix: _model.chaveOutraTextController.text,
                                verChave: _model.chaveOutraTextController.text,
                              ));
                              _model.pix4 = PixRecord.getDocumentFromData(
                                  createPixRecordData(
                                    banco: _model.bancoTextController.text,
                                    tipo: _model.dDtipoValue,
                                    comercioPix: widget.comercioPix,
                                    nomePix: _model.nomePixTextController.text,
                                    chavePix:
                                        _model.chaveOutraTextController.text,
                                    verChave:
                                        _model.chaveOutraTextController.text,
                                  ),
                                  pixRecordReference4);

                              await widget.comercioPix!
                                  .update(createComerciosRecordData(
                                pix: _model.pix4?.reference,
                              ));
                              Navigator.pop(context);
                            }

                            setState(() {});
                          },
                          text: 'Salvar',
                          options: FFButtonOptions(
                            width: 150.0,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFF29200),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 8.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                            hoverColor:
                                FlutterFlowTheme.of(context).primaryText,
                            hoverBorderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            hoverTextColor: const Color(0xFFF29200),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonOnPageLoadAnimation2']!),
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
