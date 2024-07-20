import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagamentos_widget.dart' show PagamentosWidget;
import 'package:flutter/material.dart';

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
