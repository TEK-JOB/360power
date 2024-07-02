import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cad_pix_widget.dart' show CadPixWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadPixModel extends FlutterFlowModel<CadPixWidget> {
  ///  Local state fields for this component.

  int? tipo = 0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Banco widget.
  FocusNode? bancoFocusNode;
  TextEditingController? bancoTextController;
  String? Function(BuildContext, String?)? bancoTextControllerValidator;
  String? _bancoTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for NomePix widget.
  FocusNode? nomePixFocusNode;
  TextEditingController? nomePixTextController;
  String? Function(BuildContext, String?)? nomePixTextControllerValidator;
  String? _nomePixTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 3) {
      return 'no minimo 3 caracteres';
    }

    return null;
  }

  // State field(s) for DDtipo widget.
  String? dDtipoValue;
  FormFieldController<String>? dDtipoValueController;
  // State field(s) for ChaveOutra widget.
  FocusNode? chaveOutraFocusNode;
  TextEditingController? chaveOutraTextController;
  String? Function(BuildContext, String?)? chaveOutraTextControllerValidator;
  // State field(s) for ChaveCelular widget.
  FocusNode? chaveCelularFocusNode;
  TextEditingController? chaveCelularTextController;
  final chaveCelularMask = MaskTextInputFormatter(mask: '(##) ##### - ####');
  String? Function(BuildContext, String?)? chaveCelularTextControllerValidator;
  // State field(s) for ChaveCNPJ widget.
  FocusNode? chaveCNPJFocusNode;
  TextEditingController? chaveCNPJTextController;
  final chaveCNPJMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? chaveCNPJTextControllerValidator;
  // State field(s) for ChaveCpf widget.
  FocusNode? chaveCpfFocusNode;
  TextEditingController? chaveCpfTextController;
  final chaveCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? chaveCpfTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  PixRecord? pix1;
  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  PixRecord? pix2;
  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  PixRecord? pix3;
  // Stores action output result for [Backend Call - Create Document] action in Button-Login widget.
  PixRecord? pix4;

  @override
  void initState(BuildContext context) {
    bancoTextControllerValidator = _bancoTextControllerValidator;
    nomePixTextControllerValidator = _nomePixTextControllerValidator;
  }

  @override
  void dispose() {
    bancoFocusNode?.dispose();
    bancoTextController?.dispose();

    nomePixFocusNode?.dispose();
    nomePixTextController?.dispose();

    chaveOutraFocusNode?.dispose();
    chaveOutraTextController?.dispose();

    chaveCelularFocusNode?.dispose();
    chaveCelularTextController?.dispose();

    chaveCNPJFocusNode?.dispose();
    chaveCNPJTextController?.dispose();

    chaveCpfFocusNode?.dispose();
    chaveCpfTextController?.dispose();
  }
}
