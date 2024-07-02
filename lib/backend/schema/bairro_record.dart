import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BairroRecord extends FirestoreRecord {
  BairroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "ListBairrosDestino" field.
  List<DocumentReference>? _listBairrosDestino;
  List<DocumentReference> get listBairrosDestino =>
      _listBairrosDestino ?? const [];
  bool hasListBairrosDestino() => _listBairrosDestino != null;

  // "ListRotas" field.
  List<DocumentReference>? _listRotas;
  List<DocumentReference> get listRotas => _listRotas ?? const [];
  bool hasListRotas() => _listRotas != null;

  // "CodigoBairro" field.
  String? _codigoBairro;
  String get codigoBairro => _codigoBairro ?? '';
  bool hasCodigoBairro() => _codigoBairro != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _listBairrosDestino = getDataList(snapshotData['ListBairrosDestino']);
    _listRotas = getDataList(snapshotData['ListRotas']);
    _codigoBairro = snapshotData['CodigoBairro'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('bairro')
          : FirebaseFirestore.instance.collectionGroup('bairro');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('bairro').doc(id);

  static Stream<BairroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BairroRecord.fromSnapshot(s));

  static Future<BairroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BairroRecord.fromSnapshot(s));

  static BairroRecord fromSnapshot(DocumentSnapshot snapshot) => BairroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BairroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BairroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BairroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BairroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBairroRecordData({
  String? nome,
  String? codigoBairro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'CodigoBairro': codigoBairro,
    }.withoutNulls,
  );

  return firestoreData;
}

class BairroRecordDocumentEquality implements Equality<BairroRecord> {
  const BairroRecordDocumentEquality();

  @override
  bool equals(BairroRecord? e1, BairroRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        listEquality.equals(e1?.listBairrosDestino, e2?.listBairrosDestino) &&
        listEquality.equals(e1?.listRotas, e2?.listRotas) &&
        e1?.codigoBairro == e2?.codigoBairro;
  }

  @override
  int hash(BairroRecord? e) => const ListEquality()
      .hash([e?.nome, e?.listBairrosDestino, e?.listRotas, e?.codigoBairro]);

  @override
  bool isValidKey(Object? o) => o is BairroRecord;
}
