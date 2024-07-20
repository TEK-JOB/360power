import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cad_rota_widget.dart' show CadRotaWidget;
import 'package:flutter/material.dart';

class CadRotaModel extends FlutterFlowModel<CadRotaWidget> {
  ///  Local state fields for this component.

  BairroRecord? bairroOrigem;

  BairroRecord? bairroDestino;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PrecoRota widget.
  FocusNode? precoRotaFocusNode;
  TextEditingController? precoRotaTextController;
  String? Function(BuildContext, String?)? precoRotaTextControllerValidator;
  String? _precoRotaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.isEmpty) {
      return 'no minimo 1 caracter';
    }
    if (val.length > 30) {
      return 'no maximo 30 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  RotaRecord? criaRota1;
  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  RotaRecord? criaRota2;

  @override
  void initState(BuildContext context) {
    precoRotaTextControllerValidator = _precoRotaTextControllerValidator;
  }

  @override
  void dispose() {
    precoRotaFocusNode?.dispose();
    precoRotaTextController?.dispose();
  }
}
