import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComerciosRecord extends FirestoreRecord {
  ComerciosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "online" field.
  bool? _online;
  bool get online => _online ?? false;
  bool hasOnline() => _online != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "NomeComercio" field.
  String? _nomeComercio;
  String get nomeComercio => _nomeComercio ?? '';
  bool hasNomeComercio() => _nomeComercio != null;

  // "Proprietario" field.
  DocumentReference? _proprietario;
  DocumentReference? get proprietario => _proprietario;
  bool hasProprietario() => _proprietario != null;

  // "Suspenso" field.
  bool? _suspenso;
  bool get suspenso => _suspenso ?? false;
  bool hasSuspenso() => _suspenso != null;

  // "TelefoneComercio" field.
  String? _telefoneComercio;
  String get telefoneComercio => _telefoneComercio ?? '';
  bool hasTelefoneComercio() => _telefoneComercio != null;

  // "Local" field.
  DocumentReference? _local;
  DocumentReference? get local => _local;
  bool hasLocal() => _local != null;

  // "Ponto" field.
  DocumentReference? _ponto;
  DocumentReference? get ponto => _ponto;
  bool hasPonto() => _ponto != null;

  // "idInterno" field.
  String? _idInterno;
  String get idInterno => _idInterno ?? '';
  bool hasIdInterno() => _idInterno != null;

  // "qtdCorridasHoje" field.
  int? _qtdCorridasHoje;
  int get qtdCorridasHoje => _qtdCorridasHoje ?? 0;
  bool hasQtdCorridasHoje() => _qtdCorridasHoje != null;

  // "qtdCorridasTotal" field.
  int? _qtdCorridasTotal;
  int get qtdCorridasTotal => _qtdCorridasTotal ?? 0;
  bool hasQtdCorridasTotal() => _qtdCorridasTotal != null;

  // "Bairro" field.
  DocumentReference? _bairro;
  DocumentReference? get bairro => _bairro;
  bool hasBairro() => _bairro != null;

  // "EnderCompleto" field.
  String? _enderCompleto;
  String get enderCompleto => _enderCompleto ?? '';
  bool hasEnderCompleto() => _enderCompleto != null;

  // "PIX" field.
  DocumentReference? _pix;
  DocumentReference? get pix => _pix;
  bool hasPix() => _pix != null;

  void _initializeFields() {
    _online = snapshotData['online'] as bool?;
    _logo = snapshotData['logo'] as String?;
    _nomeComercio = snapshotData['NomeComercio'] as String?;
    _proprietario = snapshotData['Proprietario'] as DocumentReference?;
    _suspenso = snapshotData['Suspenso'] as bool?;
    _telefoneComercio = snapshotData['TelefoneComercio'] as String?;
    _local = snapshotData['Local'] as DocumentReference?;
    _ponto = snapshotData['Ponto'] as DocumentReference?;
    _idInterno = snapshotData['idInterno'] as String?;
    _qtdCorridasHoje = castToType<int>(snapshotData['qtdCorridasHoje']);
    _qtdCorridasTotal = castToType<int>(snapshotData['qtdCorridasTotal']);
    _bairro = snapshotData['Bairro'] as DocumentReference?;
    _enderCompleto = snapshotData['EnderCompleto'] as String?;
    _pix = snapshotData['PIX'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comercios');

  static Stream<ComerciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ComerciosRecord.fromSnapshot(s));

  static Future<ComerciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ComerciosRecord.fromSnapshot(s));

  static ComerciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ComerciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ComerciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ComerciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ComerciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ComerciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createComerciosRecordData({
  bool? online,
  String? logo,
  String? nomeComercio,
  DocumentReference? proprietario,
  bool? suspenso,
  String? telefoneComercio,
  DocumentReference? local,
  DocumentReference? ponto,
  String? idInterno,
  int? qtdCorridasHoje,
  int? qtdCorridasTotal,
  DocumentReference? bairro,
  String? enderCompleto,
  DocumentReference? pix,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'online': online,
      'logo': logo,
      'NomeComercio': nomeComercio,
      'Proprietario': proprietario,
      'Suspenso': suspenso,
      'TelefoneComercio': telefoneComercio,
      'Local': local,
      'Ponto': ponto,
      'idInterno': idInterno,
      'qtdCorridasHoje': qtdCorridasHoje,
      'qtdCorridasTotal': qtdCorridasTotal,
      'Bairro': bairro,
      'EnderCompleto': enderCompleto,
      'PIX': pix,
    }.withoutNulls,
  );

  return firestoreData;
}

class ComerciosRecordDocumentEquality implements Equality<ComerciosRecord> {
  const ComerciosRecordDocumentEquality();

  @override
  bool equals(ComerciosRecord? e1, ComerciosRecord? e2) {
    return e1?.online == e2?.online &&
        e1?.logo == e2?.logo &&
        e1?.nomeComercio == e2?.nomeComercio &&
        e1?.proprietario == e2?.proprietario &&
        e1?.suspenso == e2?.suspenso &&
        e1?.telefoneComercio == e2?.telefoneComercio &&
        e1?.local == e2?.local &&
        e1?.ponto == e2?.ponto &&
        e1?.idInterno == e2?.idInterno &&
        e1?.qtdCorridasHoje == e2?.qtdCorridasHoje &&
        e1?.qtdCorridasTotal == e2?.qtdCorridasTotal &&
        e1?.bairro == e2?.bairro &&
        e1?.enderCompleto == e2?.enderCompleto &&
        e1?.pix == e2?.pix;
  }

  @override
  int hash(ComerciosRecord? e) => const ListEquality().hash([
        e?.online,
        e?.logo,
        e?.nomeComercio,
        e?.proprietario,
        e?.suspenso,
        e?.telefoneComercio,
        e?.local,
        e?.ponto,
        e?.idInterno,
        e?.qtdCorridasHoje,
        e?.qtdCorridasTotal,
        e?.bairro,
        e?.enderCompleto,
        e?.pix
      ]);

  @override
  bool isValidKey(Object? o) => o is ComerciosRecord;
}
