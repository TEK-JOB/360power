import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cadbairro_widget.dart' show CadbairroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
