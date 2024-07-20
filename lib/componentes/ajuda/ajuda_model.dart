import '/flutter_flow/flutter_flow_util.dart';
import 'ajuda_widget.dart' show AjudaWidget;
import 'package:flutter/material.dart';

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
