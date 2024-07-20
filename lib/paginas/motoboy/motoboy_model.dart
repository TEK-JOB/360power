import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'motoboy_widget.dart' show MotoboyWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

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
