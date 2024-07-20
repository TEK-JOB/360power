import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cad_corrida_widget.dart' show CadCorridaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

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
