import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  Local state fields for this page.

  int parte = 0;

  DocumentReference? refBairro;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    if (val.length < 4) {
      return 'No minimo 4 caracteres';
    }
    if (val.length > 30) {
      return 'No maximo  30 caracteres';
    }

    return null;
  }

  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  final cpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  String? _telefoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
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
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EnderecoRecord? criaEndereco;

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
    telefoneTextControllerValidator = _telefoneTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

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
