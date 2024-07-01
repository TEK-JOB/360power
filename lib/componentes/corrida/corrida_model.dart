import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'corrida_widget.dart' show CorridaWidget;
import 'package:flutter/material.dart';

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
