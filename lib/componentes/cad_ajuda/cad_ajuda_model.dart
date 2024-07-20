import '/flutter_flow/flutter_flow_util.dart';
import 'cad_ajuda_widget.dart' show CadAjudaWidget;
import 'package:flutter/material.dart';

class CadAjudaModel extends FlutterFlowModel<CadAjudaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  String? _ruaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 3) {
      return 'no minimo 3 caracteres';
    }

    return null;
  }

  // State field(s) for ajudaf widget.
  FocusNode? ajudafFocusNode;
  TextEditingController? ajudafTextController;
  String? Function(BuildContext, String?)? ajudafTextControllerValidator;
  String? _ajudafTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 5) {
      return 'no minimo 5 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    ruaTextControllerValidator = _ruaTextControllerValidator;
    ajudafTextControllerValidator = _ajudafTextControllerValidator;
  }

  @override
  void dispose() {
    ruaFocusNode?.dispose();
    ruaTextController?.dispose();

    ajudafFocusNode?.dispose();
    ajudafTextController?.dispose();
  }
}
