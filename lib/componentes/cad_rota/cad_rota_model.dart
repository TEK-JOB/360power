import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/componentes/edt_bairro/edt_bairro_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'cad_rota_widget.dart' show CadRotaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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

    if (val.length < 1) {
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
