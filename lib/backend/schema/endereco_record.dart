import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecoRecord extends FirestoreRecord {
  EnderecoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "UF" field.
  String? _uf;
  String get uf => _uf ?? '';
  bool hasUf() => _uf != null;

  // "Cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "Rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "Num" field.
  String? _num;
  String get num => _num ?? '';
  bool hasNum() => _num != null;

  // "Referencia" field.
  String? _referencia;
  String get referencia => _referencia ?? '';
  bool hasReferencia() => _referencia != null;

  // "Complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "localizar" field.
  String? _localizar;
  String get localizar => _localizar ?? '';
  bool hasLocalizar() => _localizar != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "Bairro2" field.
  DocumentReference? _bairro2;
  DocumentReference? get bairro2 => _bairro2;
  bool hasBairro2() => _bairro2 != null;

  void _initializeFields() {
    _uf = snapshotData['UF'] as String?;
    _cidade = snapshotData['Cidade'] as String?;
    _rua = snapshotData['Rua'] as String?;
    _num = snapshotData['Num'] as String?;
    _referencia = snapshotData['Referencia'] as String?;
    _complemento = snapshotData['Complemento'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _localizar = snapshotData['localizar'] as String?;
    _cep = snapshotData['CEP'] as String?;
    _bairro2 = snapshotData['Bairro2'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Endereco');

  static Stream<EnderecoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnderecoRecord.fromSnapshot(s));

  static Future<EnderecoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnderecoRecord.fromSnapshot(s));

  static EnderecoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnderecoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnderecoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnderecoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnderecoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnderecoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnderecoRecordData({
  String? uf,
  String? cidade,
  String? rua,
  String? num,
  String? referencia,
  String? complemento,
  DocumentReference? user,
  String? localizar,
  String? cep,
  DocumentReference? bairro2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UF': uf,
      'Cidade': cidade,
      'Rua': rua,
      'Num': num,
      'Referencia': referencia,
      'Complemento': complemento,
      'user': user,
      'localizar': localizar,
      'CEP': cep,
      'Bairro2': bairro2,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnderecoRecordDocumentEquality implements Equality<EnderecoRecord> {
  const EnderecoRecordDocumentEquality();

  @override
  bool equals(EnderecoRecord? e1, EnderecoRecord? e2) {
    return e1?.uf == e2?.uf &&
        e1?.cidade == e2?.cidade &&
        e1?.rua == e2?.rua &&
        e1?.num == e2?.num &&
        e1?.referencia == e2?.referencia &&
        e1?.complemento == e2?.complemento &&
        e1?.user == e2?.user &&
        e1?.localizar == e2?.localizar &&
        e1?.cep == e2?.cep &&
        e1?.bairro2 == e2?.bairro2;
  }

  @override
  int hash(EnderecoRecord? e) => const ListEquality().hash([
        e?.uf,
        e?.cidade,
        e?.rua,
        e?.num,
        e?.referencia,
        e?.complemento,
        e?.user,
        e?.localizar,
        e?.cep,
        e?.bairro2
      ]);

  @override
  bool isValidKey(Object? o) => o is EnderecoRecord;
}
