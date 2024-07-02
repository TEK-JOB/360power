import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:math';
import 'dart:ui';
import 'edt_comercio_widget.dart' show EdtComercioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EdtComercioModel extends FlutterFlowModel<EdtComercioWidget> {
  ///  Local state fields for this component.

  BairroRecord? novoBairro;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for NomeComercio widget.
  FocusNode? nomeComercioFocusNode;
  TextEditingController? nomeComercioTextController;
  String? Function(BuildContext, String?)? nomeComercioTextControllerValidator;
  String? _nomeComercioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 3) {
      return 'No minimo 3 caracteres';
    }
    if (val.length > 60) {
      return 'No maximo 60 caracteres';
    }

    return null;
  }

  // State field(s) for TelefoneCome widget.
  FocusNode? telefoneComeFocusNode;
  TextEditingController? telefoneComeTextController;
  final telefoneComeMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneComeTextControllerValidator;
  String? _telefoneComeTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for cidadeEndCliente widget.
  FocusNode? cidadeEndClienteFocusNode;
  TextEditingController? cidadeEndClienteTextController;
  String? Function(BuildContext, String?)?
      cidadeEndClienteTextControllerValidator;
  // State field(s) for ruaCliente widget.
  FocusNode? ruaClienteFocusNode;
  TextEditingController? ruaClienteTextController;
  String? Function(BuildContext, String?)? ruaClienteTextControllerValidator;
  // State field(s) for Bairro widget.
  final bairroKey = GlobalKey();
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? bairroSelectedOption;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for numEndCliente widget.
  FocusNode? numEndClienteFocusNode;
  TextEditingController? numEndClienteTextController;
  String? Function(BuildContext, String?)? numEndClienteTextControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for ddUF widget.
  String? ddUFValue;
  FormFieldController<String>? ddUFValueController;
  // State field(s) for referenceEndCliente widget.
  FocusNode? referenceEndClienteFocusNode;
  TextEditingController? referenceEndClienteTextController;
  String? Function(BuildContext, String?)?
      referenceEndClienteTextControllerValidator;
  // State field(s) for CompleEndCliente widget.
  FocusNode? compleEndClienteFocusNode;
  TextEditingController? compleEndClienteTextController;
  String? Function(BuildContext, String?)?
      compleEndClienteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nomeComercioTextControllerValidator = _nomeComercioTextControllerValidator;
    telefoneComeTextControllerValidator = _telefoneComeTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nomeComercioFocusNode?.dispose();
    nomeComercioTextController?.dispose();

    telefoneComeFocusNode?.dispose();
    telefoneComeTextController?.dispose();

    cidadeEndClienteFocusNode?.dispose();
    cidadeEndClienteTextController?.dispose();

    ruaClienteFocusNode?.dispose();
    ruaClienteTextController?.dispose();

    bairroFocusNode?.dispose();

    numEndClienteFocusNode?.dispose();
    numEndClienteTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    referenceEndClienteFocusNode?.dispose();
    referenceEndClienteTextController?.dispose();

    compleEndClienteFocusNode?.dispose();
    compleEndClienteTextController?.dispose();
  }
}
