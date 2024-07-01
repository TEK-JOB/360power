import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PixRecord extends FirestoreRecord {
  PixRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Banco" field.
  String? _banco;
  String get banco => _banco ?? '';
  bool hasBanco() => _banco != null;

  // "Tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "ComercioPix" field.
  DocumentReference? _comercioPix;
  DocumentReference? get comercioPix => _comercioPix;
  bool hasComercioPix() => _comercioPix != null;

  // "NomePix" field.
  String? _nomePix;
  String get nomePix => _nomePix ?? '';
  bool hasNomePix() => _nomePix != null;

  // "ChavePix" field.
  String? _chavePix;
  String get chavePix => _chavePix ?? '';
  bool hasChavePix() => _chavePix != null;

  // "verChave" field.
  String? _verChave;
  String get verChave => _verChave ?? '';
  bool hasVerChave() => _verChave != null;

  void _initializeFields() {
    _banco = snapshotData['Banco'] as String?;
    _tipo = snapshotData['Tipo'] as String?;
    _comercioPix = snapshotData['ComercioPix'] as DocumentReference?;
    _nomePix = snapshotData['NomePix'] as String?;
    _chavePix = snapshotData['ChavePix'] as String?;
    _verChave = snapshotData['verChave'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pix');

  static Stream<PixRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PixRecord.fromSnapshot(s));

  static Future<PixRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PixRecord.fromSnapshot(s));

  static PixRecord fromSnapshot(DocumentSnapshot snapshot) => PixRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PixRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PixRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PixRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PixRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPixRecordData({
  String? banco,
  String? tipo,
  DocumentReference? comercioPix,
  String? nomePix,
  String? chavePix,
  String? verChave,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Banco': banco,
      'Tipo': tipo,
      'ComercioPix': comercioPix,
      'NomePix': nomePix,
      'ChavePix': chavePix,
      'verChave': verChave,
    }.withoutNulls,
  );

  return firestoreData;
}

class PixRecordDocumentEquality implements Equality<PixRecord> {
  const PixRecordDocumentEquality();

  @override
  bool equals(PixRecord? e1, PixRecord? e2) {
    return e1?.banco == e2?.banco &&
        e1?.tipo == e2?.tipo &&
        e1?.comercioPix == e2?.comercioPix &&
        e1?.nomePix == e2?.nomePix &&
        e1?.chavePix == e2?.chavePix &&
        e1?.verChave == e2?.verChave;
  }

  @override
  int hash(PixRecord? e) => const ListEquality().hash([
        e?.banco,
        e?.tipo,
        e?.comercioPix,
        e?.nomePix,
        e?.chavePix,
        e?.verChave
      ]);

  @override
  bool isValidKey(Object? o) => o is PixRecord;
}
