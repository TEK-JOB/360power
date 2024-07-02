import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/corrida/corrida_widget.dart';
import '/componentes/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'corridas_widget.dart' show CorridasWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CorridasModel extends FlutterFlowModel<CorridasWidget> {
  ///  Local state fields for this page.

  DocumentReference? comercio;

  int? abrir;

  bool pesquisando = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel1;
  // State field(s) for psqComercio widget.
  final psqComercioKey = GlobalKey();
  FocusNode? psqComercioFocusNode;
  TextEditingController? psqComercioTextController;
  String? psqComercioSelectedOption;
  String? Function(BuildContext, String?)? psqComercioTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in psqComercio widget.
  ComerciosRecord? acheComerci;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for sideNav component.
  late SideNavModel sideNavModel2;

  @override
  void initState(BuildContext context) {
    sideNavModel1 = createModel(context, () => SideNavModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    sideNavModel2 = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel1.dispose();
    psqComercioFocusNode?.dispose();

    sideNavModel2.dispose();
  }
}
