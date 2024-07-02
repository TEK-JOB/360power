import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_widget.dart' show SideNavWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SideNavModel extends FlutterFlowModel<SideNavWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for painel widget.
  bool painelHovered = false;
  // State field(s) for motoboys widget.
  bool motoboysHovered = false;
  // State field(s) for comercios widget.
  bool comerciosHovered = false;
  // State field(s) for corrida widget.
  bool corridaHovered = false;
  // State field(s) for sair widget.
  bool sairHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
