import '/backend/backend.dart';
import '/componentes/corrida/corrida_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'corridas_motoboy_model.dart';
export 'corridas_motoboy_model.dart';

class CorridasMotoboyWidget extends StatefulWidget {
  const CorridasMotoboyWidget({
    super.key,
    required this.motoboy,
  });

  final DocumentReference? motoboy;

  @override
  State<CorridasMotoboyWidget> createState() => _CorridasMotoboyWidgetState();
}

class _CorridasMotoboyWidgetState extends State<CorridasMotoboyWidget>
    with TickerProviderStateMixin {
  late CorridasMotoboyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CorridasMotoboyModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
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
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
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
      stream: UsersRecord.getDocument(widget!.motoboy!),
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

        final corridasMotoboyUsersRecord = snapshot.data!;

        return Title(
            title: 'CorridasMotoboy',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                body: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 1.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.safePop();
                                          },
                                          child: Icon(
                                            Icons.chevron_left_sharp,
                                            color: Color(0xFFF29200),
                                            size: 44.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'Corridas',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  letterSpacing: 0.0,
                                                ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation']!),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 8.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    height: 270.0,
                                    constraints: BoxConstraints(
                                      maxWidth: 390.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 72.0,
                                                height: 72.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(10.0),
                                                    bottomRight:
                                                        Radius.circular(10.0),
                                                    topLeft:
                                                        Radius.circular(10.0),
                                                    topRight:
                                                        Radius.circular(10.0),
                                                  ),
                                                  border: Border.all(
                                                    color: Color(0xFFF29200),
                                                    width: 2.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: Duration(
                                                          milliseconds: 500),
                                                      imageUrl: valueOrDefault<
                                                          String>(
                                                        corridasMotoboyUsersRecord
                                                            .photoUrl,
                                                        'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/usre360.png?alt=media&token=4bb239e7-3698-4030-be71-d0e0e248548a',
                                                      ),
                                                      width: 44.0,
                                                      height: 44.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            corridasMotoboyUsersRecord
                                                                .nome,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: AutoSizeText(
                                                              corridasMotoboyUsersRecord
                                                                  .email
                                                                  .maybeHandleOverflow(
                                                                      maxChars:
                                                                          40),
                                                              maxLines: 2,
                                                              minFontSize: 10.0,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
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
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .sports_motorsports,
                                                          color:
                                                              Color(0xFFF29200),
                                                          size: 44.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Text(
                                                            corridasMotoboyUsersRecord
                                                                .qtdCorridasHoje
                                                                .toString(),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation1']!),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .monetization_on_outlined,
                                                          color:
                                                              Color(0xFFF29200),
                                                          size: 44.0,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: Text(
                                                            formatNumber(
                                                              corridasMotoboyUsersRecord
                                                                  .ganhosHoje,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .commaDecimal,
                                                              currency: 'R\$ ',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                ).animateOnPageLoad(animationsMap[
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: FlutterFlowCalendar(
                                  color: Color(0xFFF29200),
                                  iconColor: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  weekFormat: true,
                                  weekStartsMonday: false,
                                  initialDate: getCurrentTimestamp,
                                  rowHeight: 64.0,
                                  onChange: (DateTimeRange? newSelectedDate) {
                                    setState(() => _model.calendarSelectedDay =
                                        newSelectedDate);
                                  },
                                  titleStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        letterSpacing: 0.0,
                                      ),
                                  dayOfWeekStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  dateStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                  selectedDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                  inactiveDateStyle:
                                      FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              ),
                              Text(
                                dateTimeFormat(
                                  'd/M/y',
                                  _model.calendarSelectedDay!.start,
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      fontSize: 36.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: StreamBuilder<List<CorridasRecord>>(
                                  stream: queryCorridasRecord(
                                    queryBuilder: (corridasRecord) =>
                                        corridasRecord
                                            .where(
                                              'DisponivelEm',
                                              isGreaterThanOrEqualTo: _model
                                                  .calendarSelectedDay?.start,
                                            )
                                            .where(
                                              'DisponivelEm',
                                              isLessThanOrEqualTo: _model
                                                  .calendarSelectedDay?.end,
                                            )
                                            .where(
                                              'Motoboy',
                                              isEqualTo: widget!.motoboy,
                                            )
                                            .orderBy('DisponivelEm'),
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
                                    List<CorridasRecord>
                                        containerCorridasRecordList =
                                        snapshot.data!;

                                    return Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    18.0, 16.0, 8.0, 16.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: containerCorridasRecordList
                                                  .length
                                                  .toString(),
                                              options: FFButtonOptions(
                                                width: 200.0,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFF29200),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                                elevation: 8.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                hoverBorderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 900.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Builder(
                                                builder: (context) {
                                                  final corridasMotoboy =
                                                      containerCorridasRecordList
                                                          .toList();

                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          corridasMotoboy
                                                              .length,
                                                          (corridasMotoboyIndex) {
                                                        final corridasMotoboyItem =
                                                            corridasMotoboy[
                                                                corridasMotoboyIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      8.0,
                                                                      16.0,
                                                                      8.0),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 16.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        36.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8.0),
                                                              ),
                                                            ),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: corridasMotoboyItem
                                                                            .status !=
                                                                        'Concluido'
                                                                    ? Color(
                                                                        0xFF780508)
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          12.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          36.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .transparent,
                                                                ),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            0.0,
                                                                            8.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              16.0,
                                                                              8.0,
                                                                              16.0),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button pressed ...');
                                                                            },
                                                                            text:
                                                                                (corridasMotoboyIndex + 1).toString(),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 40.0,
                                                                              height: 40.0,
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                              color: Color(0xFFF29200),
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
                                                                              borderRadius: BorderRadius.circular(40.0),
                                                                              hoverColor: FlutterFlowTheme.of(context).primaryText,
                                                                              hoverBorderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                width: 1.0,
                                                                              ),
                                                                              hoverTextColor: Color(0xFFF29200),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Builder(
                                                                            builder: (context) =>
                                                                                InkWell(
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
                                                                                      child: GestureDetector(
                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                        child: CorridaWidget(
                                                                                          parametCorrida: corridasMotoboyItem,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              },
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        corridasMotoboyItem.nomeComercio,
                                                                                        'não informado',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: 'Readex Pro',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    corridasMotoboyItem.idPedido,
                                                                                    style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                                                          fontSize: 12.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 8.0, 0.0),
                                                                                    child: Text(
                                                                                      dateTimeFormat(
                                                                                        'Hm',
                                                                                        corridasMotoboyItem.disponivelEm!,
                                                                                        locale: FFLocalizations.of(context).languageCode,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    phone: false,
                                                                                  ))
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                      child: Text(
                                                                                        formatNumber(
                                                                                          corridasMotoboyItem.valorCorrida,
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.commaDecimal,
                                                                                          currency: 'R\$ ',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 12.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (_model.abrir !=
                                                                                corridasMotoboyIndex)
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  if (_model.abrir == corridasMotoboyIndex) {
                                                                                    _model.abrir = null;
                                                                                    setState(() {});
                                                                                  } else {
                                                                                    _model.abrir = corridasMotoboyIndex;
                                                                                    setState(() {});
                                                                                  }
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.keyboard_arrow_right,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 36.0,
                                                                                ),
                                                                              ),
                                                                            if (_model.abrir ==
                                                                                corridasMotoboyIndex)
                                                                              InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  if (_model.abrir == corridasMotoboyIndex) {
                                                                                    _model.abrir = null;
                                                                                    setState(() {});
                                                                                  } else {
                                                                                    _model.abrir = corridasMotoboyIndex;
                                                                                    setState(() {});
                                                                                  }
                                                                                },
                                                                                child: Icon(
                                                                                  Icons.keyboard_arrow_down,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 36.0,
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  if (_model
                                                                          .abrir ==
                                                                      corridasMotoboyIndex)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              58.0,
                                                                              0.0,
                                                                              0.0,
                                                                              12.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                width: double.infinity,
                                                                                constraints: BoxConstraints(
                                                                                  maxWidth: 900.0,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  color: Colors.transparent,
                                                                                ),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 32.0,
                                                                                          height: 32.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            shape: BoxShape.circle,
                                                                                            border: Border.all(
                                                                                              color: corridasMotoboyItem.pago == true ? Color(0xFF5CF91B) : Color(0xFFF20A43),
                                                                                              width: 2.0,
                                                                                            ),
                                                                                          ),
                                                                                          child: Icon(
                                                                                            Icons.monetization_on_rounded,
                                                                                            color: corridasMotoboyItem.pago == true ? Color(0xFF5CF91B) : Color(0xFFF20A43),
                                                                                            size: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                          child: Text(
                                                                                            corridasMotoboyItem.pago == true ? 'Pago' : 'Receber',
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                  color: corridasMotoboyItem.pago == true ? Color(0xFF5CF91B) : Color(0xFFF20A43),
                                                                                                  fontSize: 14.0,
                                                                                                  letterSpacing: 0.0,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                        if (corridasMotoboyItem.pago == true)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              'Pago em:  ',
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: Color(0xFF2C9A60),
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        if (corridasMotoboyItem.pago == true)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'd/M',
                                                                                                corridasMotoboyItem.pagoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: Color(0xFF2C9A60),
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        if (corridasMotoboyItem.pago == true)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'H:mm:s',
                                                                                                corridasMotoboyItem.pagoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: Color(0xFF2C9A60),
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        width: double.infinity,
                                                                                        decoration: BoxDecoration(
                                                                                          color: Colors.transparent,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                                child: RichText(
                                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                                  text: TextSpan(
                                                                                                    children: [
                                                                                                      TextSpan(
                                                                                                        text: corridasMotoboyItem.pago == true ? 'Pagamento efetuado com sucesso' : 'Pagamento não realizado',
                                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                              fontFamily: 'Plus Jakarta Sans',
                                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                              fontSize: 14.0,
                                                                                                              letterSpacing: 0.0,
                                                                                                              fontWeight: FontWeight.bold,
                                                                                                            ),
                                                                                                      )
                                                                                                    ],
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          fontFamily: 'Plus Jakarta Sans',
                                                                                                          color: Color(0xFF606A85),
                                                                                                          fontSize: 14.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Divider(
                                                                                                height: 1.0,
                                                                                                thickness: 1.0,
                                                                                                indent: 0.0,
                                                                                                color: Color(0xFFE5E7EB),
                                                                                              ),
                                                                                            ].addToEnd(SizedBox(height: 12.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              if (corridasMotoboyItem.agendado == true)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  constraints: BoxConstraints(
                                                                                    maxWidth: 900.0,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x00FFFFFF),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 32.0,
                                                                                            height: 32.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x4D9489F5),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: Color(0xFFF8B400),
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: FaIcon(
                                                                                                FontAwesomeIcons.businessTime,
                                                                                                color: Color(0xFFF8B400),
                                                                                                size: 16.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                              child: Text(
                                                                                                'Agendado',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'd/M',
                                                                                                corridasMotoboyItem.aggendadoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'H:mm:s',
                                                                                                corridasMotoboyItem.aggendadoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 0.0,
                                                                                                color: Color(0xFFF8B400),
                                                                                                offset: Offset(
                                                                                                  -2.0,
                                                                                                  0.0,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Builder(
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
                                                                                                                  child: GestureDetector(
                                                                                                                    onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                                    child: CorridaWidget(
                                                                                                                      parametCorrida: corridasMotoboyItem,
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                );
                                                                                                              },
                                                                                                            ).then((value) => setState(() {}));
                                                                                                          },
                                                                                                          child: RichText(
                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                            text: TextSpan(
                                                                                                              children: [
                                                                                                                TextSpan(
                                                                                                                  text: 'Detalhe:',
                                                                                                                  style: TextStyle(),
                                                                                                                ),
                                                                                                                TextSpan(
                                                                                                                  text: 'Clique pra ver',
                                                                                                                  style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                        fontFamily: 'Plus Jakarta Sans',
                                                                                                                        color: Color(0xFFF8B400),
                                                                                                                        fontSize: 14.0,
                                                                                                                        letterSpacing: 0.0,
                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                      ),
                                                                                                                )
                                                                                                              ],
                                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                                    color: Color(0xFF606A85),
                                                                                                                    fontSize: 14.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Divider(
                                                                                                        height: 1.0,
                                                                                                        thickness: 1.0,
                                                                                                        indent: 0.0,
                                                                                                        color: Color(0xFFE5E7EB),
                                                                                                      ),
                                                                                                    ].addToEnd(SizedBox(height: 12.0)),
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
                                                                              if (corridasMotoboyItem.disponivel == true)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  constraints: BoxConstraints(
                                                                                    maxWidth: 900.0,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x00FFFFFF),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 32.0,
                                                                                            height: 32.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x4D9489F5),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: Color(0xFFF8B400),
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: FaIcon(
                                                                                                FontAwesomeIcons.boxOpen,
                                                                                                color: Color(0xFFF8B400),
                                                                                                size: 16.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                              child: Text(
                                                                                                'Disponivel',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'd/M',
                                                                                                corridasMotoboyItem.disponivelEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'H:mm:s',
                                                                                                corridasMotoboyItem.disponivelEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 0.0,
                                                                                                color: Color(0xFFF8B400),
                                                                                                offset: Offset(
                                                                                                  -2.0,
                                                                                                  0.0,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Builder(
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
                                                                                                                child: GestureDetector(
                                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                                  child: CorridaWidget(
                                                                                                                    parametCorrida: corridasMotoboyItem,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                          ).then((value) => setState(() {}));
                                                                                                        },
                                                                                                        child: RichText(
                                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                                          text: TextSpan(
                                                                                                            children: [
                                                                                                              TextSpan(
                                                                                                                text: 'Detalhe:',
                                                                                                                style: TextStyle(),
                                                                                                              ),
                                                                                                              TextSpan(
                                                                                                                text: 'Clique pra ver',
                                                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                                      color: Color(0xFFF8B400),
                                                                                                                      fontSize: 14.0,
                                                                                                                      letterSpacing: 0.0,
                                                                                                                      fontWeight: FontWeight.bold,
                                                                                                                    ),
                                                                                                              )
                                                                                                            ],
                                                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                  fontFamily: 'Plus Jakarta Sans',
                                                                                                                  color: Color(0xFF606A85),
                                                                                                                  fontSize: 14.0,
                                                                                                                  letterSpacing: 0.0,
                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Divider(
                                                                                                      height: 1.0,
                                                                                                      thickness: 1.0,
                                                                                                      indent: 0.0,
                                                                                                      color: Color(0xFFE5E7EB),
                                                                                                    ),
                                                                                                  ].addToEnd(SizedBox(height: 12.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              if (corridasMotoboyItem.aceito == true)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  constraints: BoxConstraints(
                                                                                    maxWidth: 900.0,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x00FFFFFF),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 32.0,
                                                                                            height: 32.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x4D9489F5),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: Color(0xFFF8B400),
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: Icon(
                                                                                                Icons.sports_motorsports,
                                                                                                color: Color(0xFFF8B400),
                                                                                                size: 18.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                              child: Text(
                                                                                                'Aceita',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'd/M',
                                                                                                corridasMotoboyItem.aceitoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'H:mm:s',
                                                                                                corridasMotoboyItem.aceitoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 0.0,
                                                                                                color: Color(0xFFF8B400),
                                                                                                offset: Offset(
                                                                                                  -2.0,
                                                                                                  0.0,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                                  child: RichText(
                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                    text: TextSpan(
                                                                                                      children: [
                                                                                                        TextSpan(
                                                                                                          text: 'Motoboy:',
                                                                                                          style: TextStyle(),
                                                                                                        ),
                                                                                                        TextSpan(
                                                                                                          text: corridasMotoboyUsersRecord.displayName,
                                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                color: Color(0xFFF8B400),
                                                                                                                fontSize: 14.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        )
                                                                                                      ],
                                                                                                      style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            color: Color(0xFF606A85),
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 1.0,
                                                                                                  thickness: 1.0,
                                                                                                  indent: 0.0,
                                                                                                  color: Color(0xFFE5E7EB),
                                                                                                ),
                                                                                              ].addToEnd(SizedBox(height: 12.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              if (corridasMotoboyItem.coletado == true)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  constraints: BoxConstraints(
                                                                                    maxWidth: 900.0,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x00FFFFFF),
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 32.0,
                                                                                            height: 32.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x4D9489F5),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: Color(0xFFF8B400),
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: AlignmentDirectional(0.0, 0.0),
                                                                                              child: FaIcon(
                                                                                                FontAwesomeIcons.box,
                                                                                                color: Color(0xFFF8B400),
                                                                                                size: 18.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                              child: Text(
                                                                                                'Coletado',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'd/M',
                                                                                                corridasMotoboyItem.coletadoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'H:mm:s',
                                                                                                corridasMotoboyItem.coletadoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            boxShadow: [
                                                                                              BoxShadow(
                                                                                                blurRadius: 0.0,
                                                                                                color: Color(0xFFF8B400),
                                                                                                offset: Offset(
                                                                                                  -2.0,
                                                                                                  0.0,
                                                                                                ),
                                                                                              )
                                                                                            ],
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                                  child: RichText(
                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                    text: TextSpan(
                                                                                                      children: [
                                                                                                        TextSpan(
                                                                                                          text: 'Motoboy ja coletou o Pedido',
                                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                color: Color(0xFFF8B400),
                                                                                                                fontSize: 14.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        )
                                                                                                      ],
                                                                                                      style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            color: Color(0xFF606A85),
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 1.0,
                                                                                                  thickness: 1.0,
                                                                                                  indent: 0.0,
                                                                                                  color: Color(0xFFE5E7EB),
                                                                                                ),
                                                                                              ].addToEnd(SizedBox(height: 12.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              if (corridasMotoboyItem.concluido == true)
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  constraints: BoxConstraints(
                                                                                    maxWidth: 900.0,
                                                                                  ),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.transparent,
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 32.0,
                                                                                            height: 32.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x4D9489F5),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: Color(0xFFF8B400),
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                            child: Icon(
                                                                                              Icons.home,
                                                                                              color: Color(0xFFF8B400),
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Finalizada',
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Plus Jakarta Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 14.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'd/M',
                                                                                                corridasMotoboyItem.concluidoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                            child: Text(
                                                                                              dateTimeFormat(
                                                                                                'H:mm:s',
                                                                                                corridasMotoboyItem.concluidoEm!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                                    fontFamily: 'Plus Jakarta Sans',
                                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                    fontSize: 12.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                                                                                        child: Container(
                                                                                          width: double.infinity,
                                                                                          decoration: BoxDecoration(
                                                                                            color: Colors.transparent,
                                                                                            border: Border.all(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              width: 1.0,
                                                                                            ),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                                                                                                  child: RichText(
                                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                                    text: TextSpan(
                                                                                                      children: [
                                                                                                        TextSpan(
                                                                                                          text: 'Concluido com sucesso!',
                                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                                fontFamily: 'Plus Jakarta Sans',
                                                                                                                color: Color(0xFFF8B400),
                                                                                                                fontSize: 14.0,
                                                                                                                letterSpacing: 0.0,
                                                                                                                fontWeight: FontWeight.bold,
                                                                                                              ),
                                                                                                        )
                                                                                                      ],
                                                                                                      style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                            fontFamily: 'Plus Jakarta Sans',
                                                                                                            color: Color(0xFF606A85),
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Divider(
                                                                                                  height: 1.0,
                                                                                                  thickness: 1.0,
                                                                                                  indent: 0.0,
                                                                                                  color: Color(0xFFE5E7EB),
                                                                                                ),
                                                                                              ].addToEnd(SizedBox(height: 12.0)),
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
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
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
                                    );
                                  },
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
            ));
      },
    );
  }
}
