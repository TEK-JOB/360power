// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RotaOffStruct extends FFFirebaseStruct {
  RotaOffStruct({
    DocumentReference? origemRota,
    DocumentReference? destinoRota,
    double? precoRota,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _origemRota = origemRota,
        _destinoRota = destinoRota,
        _precoRota = precoRota,
        super(firestoreUtilData);

  // "OrigemRota" field.
  DocumentReference? _origemRota;
  DocumentReference? get origemRota => _origemRota;
  set origemRota(DocumentReference? val) => _origemRota = val;

  bool hasOrigemRota() => _origemRota != null;

  // "DestinoRota" field.
  DocumentReference? _destinoRota;
  DocumentReference? get destinoRota => _destinoRota;
  set destinoRota(DocumentReference? val) => _destinoRota = val;

  bool hasDestinoRota() => _destinoRota != null;

  // "PrecoRota" field.
  double? _precoRota;
  double get precoRota => _precoRota ?? 00.00;
  set precoRota(double? val) => _precoRota = val;

  void incrementPrecoRota(double amount) => precoRota = precoRota + amount;

  bool hasPrecoRota() => _precoRota != null;

  static RotaOffStruct fromMap(Map<String, dynamic> data) => RotaOffStruct(
        origemRota: data['OrigemRota'] as DocumentReference?,
        destinoRota: data['DestinoRota'] as DocumentReference?,
        precoRota: castToType<double>(data['PrecoRota']),
      );

  static RotaOffStruct? maybeFromMap(dynamic data) =>
      data is Map ? RotaOffStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'OrigemRota': _origemRota,
        'DestinoRota': _destinoRota,
        'PrecoRota': _precoRota,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'OrigemRota': serializeParam(
          _origemRota,
          ParamType.DocumentReference,
        ),
        'DestinoRota': serializeParam(
          _destinoRota,
          ParamType.DocumentReference,
        ),
        'PrecoRota': serializeParam(
          _precoRota,
          ParamType.double,
        ),
      }.withoutNulls;

  static RotaOffStruct fromSerializableMap(Map<String, dynamic> data) =>
      RotaOffStruct(
        origemRota: deserializeParam(
          data['OrigemRota'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Ponto', 'bairro'],
        ),
        destinoRota: deserializeParam(
          data['DestinoRota'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Ponto', 'bairro'],
        ),
        precoRota: deserializeParam(
          data['PrecoRota'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RotaOffStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RotaOffStruct &&
        origemRota == other.origemRota &&
        destinoRota == other.destinoRota &&
        precoRota == other.precoRota;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([origemRota, destinoRota, precoRota]);
}

RotaOffStruct createRotaOffStruct({
  DocumentReference? origemRota,
  DocumentReference? destinoRota,
  double? precoRota,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RotaOffStruct(
      origemRota: origemRota,
      destinoRota: destinoRota,
      precoRota: precoRota,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RotaOffStruct? updateRotaOffStruct(
  RotaOffStruct? rotaOff, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    rotaOff
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRotaOffStructData(
  Map<String, dynamic> firestoreData,
  RotaOffStruct? rotaOff,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rotaOff == null) {
    return;
  }
  if (rotaOff.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && rotaOff.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final rotaOffData = getRotaOffFirestoreData(rotaOff, forFieldValue);
  final nestedData = rotaOffData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = rotaOff.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRotaOffFirestoreData(
  RotaOffStruct? rotaOff, [
  bool forFieldValue = false,
]) {
  if (rotaOff == null) {
    return {};
  }
  final firestoreData = mapToFirestore(rotaOff.toMap());

  // Add any Firestore field values
  rotaOff.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRotaOffListFirestoreData(
  List<RotaOffStruct>? rotaOffs,
) =>
    rotaOffs?.map((e) => getRotaOffFirestoreData(e, true)).toList() ?? [];
