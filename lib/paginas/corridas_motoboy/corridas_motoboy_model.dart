import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'corridas_motoboy_widget.dart' show CorridasMotoboyWidget;
import 'package:flutter/material.dart';

class CorridasMotoboyModel extends FlutterFlowModel<CorridasMotoboyWidget> {
  ///  Local state fields for this page.

  int? abrir;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
  }
}
