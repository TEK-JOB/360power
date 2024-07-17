import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/componentes/corrida/corrida_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pagamentos_widget.dart' show PagamentosWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PagamentosModel extends FlutterFlowModel<PagamentosWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Criar Pagamento)] action in Button widget.
  ApiCallResponse? apiResulttqd;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
