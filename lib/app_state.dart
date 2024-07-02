import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Rota = prefs
              .getStringList('ff_Rota')
              ?.map((x) {
                try {
                  return RotaOffStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Rota;
    });
    _safeInit(() {
      _AppPontp = prefs.getString('ff_AppPontp')?.ref ?? _AppPontp;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<RotaOffStruct> _Rota = [
    RotaOffStruct.fromSerializableMap(jsonDecode(
        '{\"OrigemRota\":\"/bairro/example\",\"DestinoRota\":\"/bairro/example\",\"PrecoRota\":\"0\"}'))
  ];
  List<RotaOffStruct> get Rota => _Rota;
  set Rota(List<RotaOffStruct> value) {
    _Rota = value;
    prefs.setStringList('ff_Rota', value.map((x) => x.serialize()).toList());
  }

  void addToRota(RotaOffStruct value) {
    Rota.add(value);
    prefs.setStringList('ff_Rota', _Rota.map((x) => x.serialize()).toList());
  }

  void removeFromRota(RotaOffStruct value) {
    Rota.remove(value);
    prefs.setStringList('ff_Rota', _Rota.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromRota(int index) {
    Rota.removeAt(index);
    prefs.setStringList('ff_Rota', _Rota.map((x) => x.serialize()).toList());
  }

  void updateRotaAtIndex(
    int index,
    RotaOffStruct Function(RotaOffStruct) updateFn,
  ) {
    Rota[index] = updateFn(_Rota[index]);
    prefs.setStringList('ff_Rota', _Rota.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInRota(int index, RotaOffStruct value) {
    Rota.insert(index, value);
    prefs.setStringList('ff_Rota', _Rota.map((x) => x.serialize()).toList());
  }

  DocumentReference? _AppPontp =
      FirebaseFirestore.instance.doc('/Ponto/CW0wv21HS8oumtPuyLz6');
  DocumentReference? get AppPontp => _AppPontp;
  set AppPontp(DocumentReference? value) {
    _AppPontp = value;
    value != null
        ? prefs.setString('ff_AppPontp', value.path)
        : prefs.remove('ff_AppPontp');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
