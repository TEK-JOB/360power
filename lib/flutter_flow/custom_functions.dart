import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? limpaCamposTelefone(String? telefone) {
// formate o numero de telefone sem ( ) - e espaço
  if (telefone == null) return null;
  return telefone
      .replaceAll('(', '')
      .replaceAll(')', '')
      .replaceAll('-', '')
      .replaceAll('/', '')
      .replaceAll('.', '')
      .replaceAll(' ', '');
}

String? gerarUUID4() {
  // gere para mim um codigo UUID4
  String uuid = '';
  final random = math.Random();
  for (int i = 0; i < 32; i++) {
    if (i == 8 || i == 12 || i == 16 || i == 20) {
      uuid += '-';
    }
    final digit = random.nextInt(16).toRadixString(16);
    uuid += digit;
  }
  return uuid;
}

String imgbase64(String codigobase64) {
  // exibir uma imagem decodificando um codigo com base64
  return 'data:image/png;base64,$codigobase64';
}
