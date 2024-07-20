import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edt_corrida_widget.dart' show EdtCorridaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EdtCorridaModel extends FlutterFlowModel<EdtCorridaWidget> {
  ///  Local state fields for this component.

  BairroRecord? docBairroDestino;

  bool pago = false;

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

    if (val.isEmpty) {
      return 'no minimo 1 caracter';
    }
    if (val.length > 20) {
      return 'No maximo 20 caracteres';
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
      return 'Campo Obrigatório';
    }
    if (val != bairroSelectedOption) {
      return 'Precisa escolher um bairro para o destino';
    }
    if (val.length < 5) {
      return 'No minimo 5 caracteres';
    }

    return null;
  }

  // State field(s) for fone widget.
  FocusNode? foneFocusNode;
  TextEditingController? foneTextController;
  final foneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? foneTextControllerValidator;
  // State field(s) for PrcoPedido widget.
  FocusNode? prcoPedidoFocusNode;
  TextEditingController? prcoPedidoTextController;
  String? Function(BuildContext, String?)? prcoPedidoTextControllerValidator;
  String? _prcoPedidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for detalhes widget.
  FocusNode? detalhesFocusNode;
  TextEditingController? detalhesTextController;
  String? Function(BuildContext, String?)? detalhesTextControllerValidator;
  String? _detalhesTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 5) {
      return 'No minimo 5 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    idTextControllerValidator = _idTextControllerValidator;
    bairroTextControllerValidator = _bairroTextControllerValidator;
    prcoPedidoTextControllerValidator = _prcoPedidoTextControllerValidator;
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
