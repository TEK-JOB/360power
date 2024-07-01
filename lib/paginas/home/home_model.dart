import '/backend/backend.dart';
import '/componentes/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool tocar = false;

  int? motoAtivo = 0;

  int contar = 0;

  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<UsersRecord>? acheMotoboys;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<ComerciosRecord>? achecomercio;
  // Stores action output result for [Firestore Query - Query a collection] action in Column widget.
  List<UsersRecord>? pegueMoto;
  // Stores action output result for [Firestore Query - Query a collection] action in cart1 widget.
  List<UsersRecord>? motoboys;
  AudioPlayer? soundPlayer;
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
    sideNavModel1.dispose();
    sideNavModel2.dispose();
  }
}
