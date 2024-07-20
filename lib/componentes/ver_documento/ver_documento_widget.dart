import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'ver_documento_model.dart';
export 'ver_documento_model.dart';

class VerDocumentoWidget extends StatefulWidget {
  const VerDocumentoWidget({
    super.key,
    String? documento,
  }) : documento = documento ??
            'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/sem%20logo2.png?alt=media&token=b0fab6b5-01c2-4681-bf51-f2989da1ad72';

  final String documento;

  @override
  State<VerDocumentoWidget> createState() => _VerDocumentoWidgetState();
}

class _VerDocumentoWidgetState extends State<VerDocumentoWidget> {
  late VerDocumentoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerDocumentoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0x7514181B),
        ),
        alignment: const AlignmentDirectional(0.0, -1.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            constraints: const BoxConstraints(
              maxHeight: 800.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x19000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
              child: Image.network(
                valueOrDefault<String>(
                  widget.documento,
                  'https://firebasestorage.googleapis.com/v0/b/power-zxvlh8.appspot.com/o/sem%20logo2.png?alt=media&token=b0fab6b5-01c2-4681-bf51-f2989da1ad72',
                ),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.contain,
                alignment: const Alignment(0.0, 0.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
