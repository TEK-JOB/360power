import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../index.dart';
import '../../main.dart';

final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.white,
          child: Image.asset(
            'assets/images/loading-6.gif',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Login': ParameterData.none(),
  'erro404': ParameterData.none(),
  'Cadastro': (data) async => ParameterData(
        allParams: {
          'tp': getParameter<String>(data, 'tp'),
          'de': getParameter<DocumentReference>(data, 'de'),
        },
      ),
  'Corridas': ParameterData.none(),
  'Home': ParameterData.none(),
  'MeusMotoboys': ParameterData.none(),
  'list': ParameterData.none(),
  'perfil': ParameterData.none(),
  'Dashboard': ParameterData.none(),
  'loading': ParameterData.none(),
  'Qr': (data) async => ParameterData(
        allParams: {
          'tipo': getParameter<String>(data, 'tipo'),
          'ponto': getParameter<DocumentReference>(data, 'ponto'),
        },
      ),
  'Comercio': ParameterData.none(),
  'Motoboy': ParameterData.none(),
  'VerMotoboy': (data) async => ParameterData(
        allParams: {
          'motoboySelect':
              getParameter<DocumentReference>(data, 'motoboySelect'),
        },
      ),
  'documentos': ParameterData.none(),
  'CorridasMotoboy': (data) async => ParameterData(
        allParams: {
          'motoboy': getParameter<DocumentReference>(data, 'motoboy'),
        },
      ),
  'CorridasComercio': (data) async => ParameterData(
        allParams: {
          'comercioPag': await getDocumentParameter<ComerciosRecord>(
              data, 'comercioPag', ComerciosRecord.fromSnapshot),
        },
      ),
  'MeusComercios': ParameterData.none(),
  'VerComercio': (data) async => ParameterData(
        allParams: {
          'comercioSelect': await getDocumentParameter<ComerciosRecord>(
              data, 'comercioSelect', ComerciosRecord.fromSnapshot),
        },
      ),
  'PagPix': (data) async => ParameterData(
        allParams: {
          'idPix': getParameter<String>(data, 'idPix'),
          'qrcode': getParameter<String>(data, 'qrcode'),
          'chavePix': getParameter<String>(data, 'chavePix'),
          'url': getParameter<String>(data, 'url'),
          'status': getParameter<String>(data, 'status'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
