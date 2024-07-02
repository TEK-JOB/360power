import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'edt_ajuda_widget.dart' show EdtAjudaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EdtAjudaModel extends FlutterFlowModel<EdtAjudaWidget> {
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
