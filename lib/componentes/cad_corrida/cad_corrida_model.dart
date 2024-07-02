import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cad_corrida_widget.dart' show CadCorridaWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CadCorridaModel extends FlutterFlowModel<CadCorridaWidget> {
  ///  Local state fields for this component.

  BairroRecord? docBairroDestino;

  RotaRecord? rotaAchada;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  String? _idTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Bairro widget.
  final bairroKey = GlobalKey();
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? bairroSelectedOption;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  String? _bairroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }
    if (val != bairroSelectedOption) {
      return 'Escolha uma opção';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Bairro widget.
  RotaRecord? acheiRota;
  // Stores action output result for [Firestore Query - Query a collection] action in Bairro widget.
  RotaRecord? acheiRota2;
  // Stores action output result for [Firestore Query - Query a collection] action in Bairro widget.
  RotaRecord? acheiRota3;
  // State field(s) for fone widget.
  FocusNode? foneFocusNode;
  TextEditingController? foneTextController;
  final foneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? foneTextControllerValidator;
  // State field(s) for PrcoPedido widget.
  FocusNode? prcoPedidoFocusNode;
  TextEditingController? prcoPedidoTextController;
  String? Function(BuildContext, String?)? prcoPedidoTextControllerValidator;
  // State field(s) for detalhes widget.
  FocusNode? detalhesFocusNode;
  TextEditingController? detalhesTextController;
  String? Function(BuildContext, String?)? detalhesTextControllerValidator;
  String? _detalhesTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    if (val.length < 10) {
      return 'No minimo 10 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CorridasRecord? criaCorridaAgendada;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CorridasRecord? criaCorrida;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  CorridasRecord? criaCorridaCopy;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  CorridasRecord? criaCorridaFila;

  @override
  void initState(BuildContext context) {
    idTextControllerValidator = _idTextControllerValidator;
    bairroTextControllerValidator = _bairroTextControllerValidator;
    detalhesTextControllerValidator = _detalhesTextControllerValidator;
  }

  @override
  void dispose() {
    idFocusNode?.dispose();
    idTextController?.dispose();

    bairroFocusNode?.dispose();

    foneFocusNode?.dispose();
    foneTextController?.dispose();

    prcoPedidoFocusNode?.dispose();
    prcoPedidoTextController?.dispose();

    detalhesFocusNode?.dispose();
    detalhesTextController?.dispose();
  }
}
