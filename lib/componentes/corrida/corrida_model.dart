import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/componentes/endere_comercio/endere_comercio_widget.dart';
import '/componentes/tranferir_corrida/tranferir_corrida_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'corrida_widget.dart' show CorridaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CorridaModel extends FlutterFlowModel<CorridaWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? ashemotoboy3;
  // State field(s) for copieChave widget.
  FocusNode? copieChaveFocusNode;
  TextEditingController? copieChaveTextController;
  String? Function(BuildContext, String?)? copieChaveTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    copieChaveFocusNode?.dispose();
    copieChaveTextController?.dispose();
  }
}
