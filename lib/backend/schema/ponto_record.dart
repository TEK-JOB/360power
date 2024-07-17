import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PontoRecord extends FirestoreRecord {
  PontoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gestor" field.
  List<DocumentReference>? _gestor;
  List<DocumentReference> get gestor => _gestor ?? const [];
  bool hasGestor() => _gestor != null;

  // "aberto" field.
  bool? _aberto;
  bool get aberto => _aberto ?? false;
  bool hasAberto() => _aberto != null;

  // "endereco" field.
  DocumentReference? _endereco;
  DocumentReference? get endereco => _endereco;
  bool hasEndereco() => _endereco != null;

  // "FilaMotoboys" field.
  List<DocumentReference>? _filaMotoboys;
  List<DocumentReference> get filaMotoboys => _filaMotoboys ?? const [];
  bool hasFilaMotoboys() => _filaMotoboys != null;

  // "LitMotoboys" field.
  List<DocumentReference>? _litMotoboys;
  List<DocumentReference> get litMotoboys => _litMotoboys ?? const [];
  bool hasLitMotoboys() => _litMotoboys != null;

  // "ListComercios" field.
  List<DocumentReference>? _listComercios;
  List<DocumentReference> get listComercios => _listComercios ?? const [];
  bool hasListComercios() => _listComercios != null;

  // "Created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "QtdMotoboyAtv" field.
  int? _qtdMotoboyAtv;
  int get qtdMotoboyAtv => _qtdMotoboyAtv ?? 0;
  bool hasQtdMotoboyAtv() => _qtdMotoboyAtv != null;

  // "QtdComercioAtv" field.
  int? _qtdComercioAtv;
  int get qtdComercioAtv => _qtdComercioAtv ?? 0;
  bool hasQtdComercioAtv() => _qtdComercioAtv != null;

  // "nomePonto" field.
  String? _nomePonto;
  String get nomePonto => _nomePonto ?? '';
  bool hasNomePonto() => _nomePonto != null;

  void _initializeFields() {
    _gestor = getDataList(snapshotData['gestor']);
    _aberto = snapshotData['aberto'] as bool?;
    _endereco = snapshotData['endereco'] as DocumentReference?;
    _filaMotoboys = getDataList(snapshotData['FilaMotoboys']);
    _litMotoboys = getDataList(snapshotData['LitMotoboys']);
    _listComercios = getDataList(snapshotData['ListComercios']);
    _createdTime = snapshotData['Created_time'] as DateTime?;
    _qtdMotoboyAtv = castToType<int>(snapshotData['QtdMotoboyAtv']);
    _qtdComercioAtv = castToType<int>(snapshotData['QtdComercioAtv']);
    _nomePonto = snapshotData['nomePonto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ponto');

  static Stream<PontoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PontoRecord.fromSnapshot(s));

  static Future<PontoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PontoRecord.fromSnapshot(s));

  static PontoRecord fromSnapshot(DocumentSnapshot snapshot) => PontoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PontoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PontoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PontoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PontoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPontoRecordData({
  bool? aberto,
  DocumentReference? endereco,
  DateTime? createdTime,
  int? qtdMotoboyAtv,
  int? qtdComercioAtv,
  String? nomePonto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'aberto': aberto,
      'endereco': endereco,
      'Created_time': createdTime,
      'QtdMotoboyAtv': qtdMotoboyAtv,
      'QtdComercioAtv': qtdComercioAtv,
      'nomePonto': nomePonto,
    }.withoutNulls,
  );

  return firestoreData;
}

class PontoRecordDocumentEquality implements Equality<PontoRecord> {
  const PontoRecordDocumentEquality();

  @override
  bool equals(PontoRecord? e1, PontoRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.gestor, e2?.gestor) &&
        e1?.aberto == e2?.aberto &&
        e1?.endereco == e2?.endereco &&
        listEquality.equals(e1?.filaMotoboys, e2?.filaMotoboys) &&
        listEquality.equals(e1?.litMotoboys, e2?.litMotoboys) &&
        listEquality.equals(e1?.listComercios, e2?.listComercios) &&
        e1?.createdTime == e2?.createdTime &&
        e1?.qtdMotoboyAtv == e2?.qtdMotoboyAtv &&
        e1?.qtdComercioAtv == e2?.qtdComercioAtv &&
        e1?.nomePonto == e2?.nomePonto;
  }

  @override
  int hash(PontoRecord? e) => const ListEquality().hash([
        e?.gestor,
        e?.aberto,
        e?.endereco,
        e?.filaMotoboys,
        e?.litMotoboys,
        e?.listComercios,
        e?.createdTime,
        e?.qtdMotoboyAtv,
        e?.qtdComercioAtv,
        e?.nomePonto
      ]);

  @override
  bool isValidKey(Object? o) => o is PontoRecord;
}
