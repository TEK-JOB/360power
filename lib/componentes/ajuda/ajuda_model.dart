import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'ajuda_widget.dart' show AjudaWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjudaModel extends FlutterFlowModel<AjudaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for rua widget.
  final ruaKey = GlobalKey();
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? ruaSelectedOption;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  // State field(s) for ajudaf widget.
  FocusNode? ajudafFocusNode;
  TextEditingController? ajudafTextController;
  String? Function(BuildContext, String?)? ajudafTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ruaFocusNode?.dispose();

    ajudafFocusNode?.dispose();
    ajudafTextController?.dispose();
  }
}
