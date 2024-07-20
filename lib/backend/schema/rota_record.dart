import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RotaRecord extends FirestoreRecord {
  RotaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "RotaOrigem" field.
  DocumentReference? _rotaOrigem;
  DocumentReference? get rotaOrigem => _rotaOrigem;
  bool hasRotaOrigem() => _rotaOrigem != null;

  // "RotaDestino" field.
  DocumentReference? _rotaDestino;
  DocumentReference? get rotaDestino => _rotaDestino;
  bool hasRotaDestino() => _rotaDestino != null;

  // "RotaPreco" field.
  double? _rotaPreco;
  double get rotaPreco => _rotaPreco ?? 0.0;
  bool hasRotaPreco() => _rotaPreco != null;

  // "txtDestino" field.
  String? _txtDestino;
  String get txtDestino => _txtDestino ?? '';
  bool hasTxtDestino() => _txtDestino != null;

  // "txtOrigem" field.
  String? _txtOrigem;
  String get txtOrigem => _txtOrigem ?? '';
  bool hasTxtOrigem() => _txtOrigem != null;

  // "CodigoRota" field.
  String? _codigoRota;
  String get codigoRota => _codigoRota ?? '';
  bool hasCodigoRota() => _codigoRota != null;

  // "corridasRota" field.
  List<DocumentReference>? _corridasRota;
  List<DocumentReference> get corridasRota => _corridasRota ?? const [];
  bool hasCorridasRota() => _corridasRota != null;

  // "QtdCorridasRota" field.
  int? _qtdCorridasRota;
  int get qtdCorridasRota => _qtdCorridasRota ?? 0;
  bool hasQtdCorridasRota() => _qtdCorridasRota != null;

  // "NomeRota" field.
  String? _nomeRota;
  String get nomeRota => _nomeRota ?? '';
  bool hasNomeRota() => _nomeRota != null;

  // "Arecadacao" field.
  double? _arecadacao;
  double get arecadacao => _arecadacao ?? 0.0;
  bool hasArecadacao() => _arecadacao != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _rotaOrigem = snapshotData['RotaOrigem'] as DocumentReference?;
    _rotaDestino = snapshotData['RotaDestino'] as DocumentReference?;
    _rotaPreco = castToType<double>(snapshotData['RotaPreco']);
    _txtDestino = snapshotData['txtDestino'] as String?;
    _txtOrigem = snapshotData['txtOrigem'] as String?;
    _codigoRota = snapshotData['CodigoRota'] as String?;
    _corridasRota = getDataList(snapshotData['corridasRota']);
    _qtdCorridasRota = castToType<int>(snapshotData['QtdCorridasRota']);
    _nomeRota = snapshotData['NomeRota'] as String?;
    _arecadacao = castToType<double>(snapshotData['Arecadacao']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Rota')
          : FirebaseFirestore.instance.collectionGroup('Rota');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Rota').doc(id);

  static Stream<RotaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RotaRecord.fromSnapshot(s));

  static Future<RotaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RotaRecord.fromSnapshot(s));

  static RotaRecord fromSnapshot(DocumentSnapshot snapshot) => RotaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RotaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RotaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RotaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RotaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRotaRecordData({
  DocumentReference? rotaOrigem,
  DocumentReference? rotaDestino,
  double? rotaPreco,
  String? txtDestino,
  String? txtOrigem,
  String? codigoRota,
  int? qtdCorridasRota,
  String? nomeRota,
  double? arecadacao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'RotaOrigem': rotaOrigem,
      'RotaDestino': rotaDestino,
      'RotaPreco': rotaPreco,
      'txtDestino': txtDestino,
      'txtOrigem': txtOrigem,
      'CodigoRota': codigoRota,
      'QtdCorridasRota': qtdCorridasRota,
      'NomeRota': nomeRota,
      'Arecadacao': arecadacao,
    }.withoutNulls,
  );

  return firestoreData;
}

class RotaRecordDocumentEquality implements Equality<RotaRecord> {
  const RotaRecordDocumentEquality();

  @override
  bool equals(RotaRecord? e1, RotaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.rotaOrigem == e2?.rotaOrigem &&
        e1?.rotaDestino == e2?.rotaDestino &&
        e1?.rotaPreco == e2?.rotaPreco &&
        e1?.txtDestino == e2?.txtDestino &&
        e1?.txtOrigem == e2?.txtOrigem &&
        e1?.codigoRota == e2?.codigoRota &&
        listEquality.equals(e1?.corridasRota, e2?.corridasRota) &&
        e1?.qtdCorridasRota == e2?.qtdCorridasRota &&
        e1?.nomeRota == e2?.nomeRota &&
        e1?.arecadacao == e2?.arecadacao;
  }

  @override
  int hash(RotaRecord? e) => const ListEquality().hash([
        e?.rotaOrigem,
        e?.rotaDestino,
        e?.rotaPreco,
        e?.txtDestino,
        e?.txtOrigem,
        e?.codigoRota,
        e?.corridasRota,
        e?.qtdCorridasRota,
        e?.nomeRota,
        e?.arecadacao
      ]);

  @override
  bool isValidKey(Object? o) => o is RotaRecord;
}
