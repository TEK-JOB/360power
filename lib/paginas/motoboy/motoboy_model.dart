import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/ajuda/ajuda_widget.dart';
import '/componentes/corrida/corrida_widget.dart';
import '/componentes/fila/fila_widget.dart';
import '/componentes/pagamentos/pagamentos_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'motoboy_widget.dart' show MotoboyWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';

class MotoboyModel extends FlutterFlowModel<MotoboyWidget> {
  ///  Local state fields for this page.

  String stats = 'Disponivel';

  int? abrir;

  bool tocandoRadio = false;

  bool ver = true;

  int? contar;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Motoboy widget.
  PontoRecord? achuumPnto;
  AudioPlayer? soundPlayer;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<UsersRecord>? pegueMoto2;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<UsersRecord>? acheMotoboys5;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<ComerciosRecord>? achecomercio2;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
