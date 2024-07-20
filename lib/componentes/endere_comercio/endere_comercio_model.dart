import '/flutter_flow/flutter_flow_util.dart';
import 'endere_comercio_widget.dart' show EndereComercioWidget;
import 'package:flutter/material.dart';

class EndereComercioModel extends FlutterFlowModel<EndereComercioWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for cidadeEndCliente widget.
  FocusNode? cidadeEndClienteFocusNode;
  TextEditingController? cidadeEndClienteTextController;
  String? Function(BuildContext, String?)?
      cidadeEndClienteTextControllerValidator;
  // State field(s) for bairroCliente widget.
  FocusNode? bairroClienteFocusNode;
  TextEditingController? bairroClienteTextController;
  String? Function(BuildContext, String?)? bairroClienteTextControllerValidator;
  // State field(s) for ruaCliente widget.
  FocusNode? ruaClienteFocusNode;
  TextEditingController? ruaClienteTextController;
  String? Function(BuildContext, String?)? ruaClienteTextControllerValidator;
  // State field(s) for numEndCliente widget.
  FocusNode? numEndClienteFocusNode;
  TextEditingController? numEndClienteTextController;
  String? Function(BuildContext, String?)? numEndClienteTextControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode1;
  TextEditingController? cepTextController1;
  String? Function(BuildContext, String?)? cepTextController1Validator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode2;
  TextEditingController? cepTextController2;
  String? Function(BuildContext, String?)? cepTextController2Validator;
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
  // State field(s) for copieChave widget.
  FocusNode? copieChaveFocusNode;
  TextEditingController? copieChaveTextController;
  String? Function(BuildContext, String?)? copieChaveTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    cidadeEndClienteFocusNode?.dispose();
    cidadeEndClienteTextController?.dispose();

    bairroClienteFocusNode?.dispose();
    bairroClienteTextController?.dispose();

    ruaClienteFocusNode?.dispose();
    ruaClienteTextController?.dispose();

    numEndClienteFocusNode?.dispose();
    numEndClienteTextController?.dispose();

    cepFocusNode1?.dispose();
    cepTextController1?.dispose();

    cepFocusNode2?.dispose();
    cepTextController2?.dispose();

    referenceEndClienteFocusNode?.dispose();
    referenceEndClienteTextController?.dispose();

    compleEndClienteFocusNode?.dispose();
    compleEndClienteTextController?.dispose();

    copieChaveFocusNode?.dispose();
    copieChaveTextController?.dispose();
  }
}
