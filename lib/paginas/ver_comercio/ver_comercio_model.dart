import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ver_comercio_widget.dart' show VerComercioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class VerComercioModel extends FlutterFlowModel<VerComercioWidget> {
  ///  Local state fields for this page.

  DocumentReference? refBairro;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
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
  List<BairroRecord>? bairroPreviousSnapshot;
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
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
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
