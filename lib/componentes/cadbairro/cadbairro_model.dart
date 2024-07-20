import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadbairro_widget.dart' show CadbairroWidget;
import 'package:flutter/material.dart';

class CadbairroModel extends FlutterFlowModel<CadbairroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  String? _bairroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 3) {
      return 'no minimo 3 caracteres';
    }
    if (val.length > 30) {
      return 'no maximo 30 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  BairroRecord? criaBairro;

  @override
  void initState(BuildContext context) {
    bairroTextControllerValidator = _bairroTextControllerValidator;
  }

  @override
  void dispose() {
    bairroFocusNode?.dispose();
    bairroTextController?.dispose();
  }
}
