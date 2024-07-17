// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future atualizarAPI(Future<dynamic> Function() reflesh) async {
  // fazer consulta em uma API a cada 10 segundos
// This function will call the API every 10 seconds and refresh the data

  while (true) {
    await Future.delayed(Duration(seconds: 10));
    await reflesh();
  }
}
