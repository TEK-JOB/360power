import '/componentes/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meus_motoboys_widget.dart' show MeusMotoboysWidget;
import 'package:flutter/material.dart';

class MeusMotoboysModel extends FlutterFlowModel<MeusMotoboysWidget> {
  ///  Local state fields for this page.

  String statusEntrega = 'disponivel';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sideNav component.
  late SideNavModel sideNavModel1;
  // Model for sideNav component.
  late SideNavModel sideNavModel2;

  @override
  void initState(BuildContext context) {
    sideNavModel1 = createModel(context, () => SideNavModel());
    sideNavModel2 = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel1.dispose();
    sideNavModel2.dispose();
  }
}
