import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class StatusPixMPCall {
  static Future<ApiCallResponse> call({
    String? token =
        'APP_USR-1642117857312723-070117-8fdbfd979a8521d91417725293bb6fe1-129592385',
    String? idPix = '82214948286',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Status Pix MP',
      apiUrl: 'https://api.mercadopago.com/v1/payments/$idPix',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static double? recebido(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.transaction_details.net_received_amount''',
      ));
  static double? taxa(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.charges_details[:].amounts.original''',
      ));
  static String? pago(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.date_approved''',
      ));
}

class CriarPagamentoCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'APP_USR-3703502955972422-032209-8a28de7c37a70e7a013a3ef0f65b46f0-258151765',
    String? stringrandomica = 'jhjhgjjdhgsjdhgwyywyauuujzmkOKJGKG',
    String? description = 'TEST pagar diaria',
    double? transactionAmount = 1,
    String? email = 'jhonyoliver_b@hotmail.com',
    String? firstName = 'Dionathan',
    String? paymentMethodId = 'pix',
  }) async {
    final ffApiRequestBody = '''
{
  "description": "$description",
  "transaction_amount": $transactionAmount,
  "payment_method_id": "$paymentMethodId",
  "payer": {
    "email": "$email",
    "first_name": "$firstName",
    "identification": {
      "type": "CPF",
      "number": "37865149840"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Pagamento',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'X-Idempotency-Key': '$stringrandomica',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? qrCode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.ticket_url''',
      ));
  static int? idPix(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? base64(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.point_of_interaction.transaction_data.qr_code_base64''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
