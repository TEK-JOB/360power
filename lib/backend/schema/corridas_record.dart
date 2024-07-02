import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CorridasRecord extends FirestoreRecord {
  CorridasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Comercio" field.
  DocumentReference? _comercio;
  DocumentReference? get comercio => _comercio;
  bool hasComercio() => _comercio != null;

  // "Motoboy" field.
  DocumentReference? _motoboy;
  DocumentReference? get motoboy => _motoboy;
  bool hasMotoboy() => _motoboy != null;

  // "Ponto" field.
  DocumentReference? _ponto;
  DocumentReference? get ponto => _ponto;
  bool hasPonto() => _ponto != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Detalhe" field.
  String? _detalhe;
  String get detalhe => _detalhe ?? '';
  bool hasDetalhe() => _detalhe != null;

  // "Cancelado" field.
  bool? _cancelado;
  bool get cancelado => _cancelado ?? false;
  bool hasCancelado() => _cancelado != null;

  // "CanceladoEm" field.
  DateTime? _canceladoEm;
  DateTime? get canceladoEm => _canceladoEm;
  bool hasCanceladoEm() => _canceladoEm != null;

  // "Concluido" field.
  bool? _concluido;
  bool get concluido => _concluido ?? false;
  bool hasConcluido() => _concluido != null;

  // "ConcluidoEm" field.
  DateTime? _concluidoEm;
  DateTime? get concluidoEm => _concluidoEm;
  bool hasConcluidoEm() => _concluidoEm != null;

  // "Disponivel" field.
  bool? _disponivel;
  bool get disponivel => _disponivel ?? false;
  bool hasDisponivel() => _disponivel != null;

  // "IdPedido" field.
  String? _idPedido;
  String get idPedido => _idPedido ?? '';
  bool hasIdPedido() => _idPedido != null;

  // "FoneDestino" field.
  String? _foneDestino;
  String get foneDestino => _foneDestino ?? '';
  bool hasFoneDestino() => _foneDestino != null;

  // "DisponivelEm" field.
  DateTime? _disponivelEm;
  DateTime? get disponivelEm => _disponivelEm;
  bool hasDisponivelEm() => _disponivelEm != null;

  // "AceitoEm" field.
  DateTime? _aceitoEm;
  DateTime? get aceitoEm => _aceitoEm;
  bool hasAceitoEm() => _aceitoEm != null;

  // "Aceito" field.
  bool? _aceito;
  bool get aceito => _aceito ?? false;
  bool hasAceito() => _aceito != null;

  // "Coletado" field.
  bool? _coletado;
  bool get coletado => _coletado ?? false;
  bool hasColetado() => _coletado != null;

  // "ColetadoEm" field.
  DateTime? _coletadoEm;
  DateTime? get coletadoEm => _coletadoEm;
  bool hasColetadoEm() => _coletadoEm != null;

  // "Agendado" field.
  bool? _agendado;
  bool get agendado => _agendado ?? false;
  bool hasAgendado() => _agendado != null;

  // "AggendadoEm" field.
  DateTime? _aggendadoEm;
  DateTime? get aggendadoEm => _aggendadoEm;
  bool hasAggendadoEm() => _aggendadoEm != null;

  // "Pago" field.
  bool? _pago;
  bool get pago => _pago ?? false;
  bool hasPago() => _pago != null;

  // "PagoEm" field.
  DateTime? _pagoEm;
  DateTime? get pagoEm => _pagoEm;
  bool hasPagoEm() => _pagoEm != null;

  // "ValorCorrida" field.
  double? _valorCorrida;
  double get valorCorrida => _valorCorrida ?? 0.0;
  bool hasValorCorrida() => _valorCorrida != null;

  // "valorProduto" field.
  double? _valorProduto;
  double get valorProduto => _valorProduto ?? 0.0;
  bool hasValorProduto() => _valorProduto != null;

  // "nomeMotoboy" field.
  String? _nomeMotoboy;
  String get nomeMotoboy => _nomeMotoboy ?? '';
  bool hasNomeMotoboy() => _nomeMotoboy != null;

  // "zap" field.
  String? _zap;
  String get zap => _zap ?? '';
  bool hasZap() => _zap != null;

  // "NomeComercio" field.
  String? _nomeComercio;
  String get nomeComercio => _nomeComercio ?? '';
  bool hasNomeComercio() => _nomeComercio != null;

  void _initializeFields() {
    _comercio = snapshotData['Comercio'] as DocumentReference?;
    _motoboy = snapshotData['Motoboy'] as DocumentReference?;
    _ponto = snapshotData['Ponto'] as DocumentReference?;
    _status = snapshotData['Status'] as String?;
    _detalhe = snapshotData['Detalhe'] as String?;
    _cancelado = snapshotData['Cancelado'] as bool?;
    _canceladoEm = snapshotData['CanceladoEm'] as DateTime?;
    _concluido = snapshotData['Concluido'] as bool?;
    _concluidoEm = snapshotData['ConcluidoEm'] as DateTime?;
    _disponivel = snapshotData['Disponivel'] as bool?;
    _idPedido = snapshotData['IdPedido'] as String?;
    _foneDestino = snapshotData['FoneDestino'] as String?;
    _disponivelEm = snapshotData['DisponivelEm'] as DateTime?;
    _aceitoEm = snapshotData['AceitoEm'] as DateTime?;
    _aceito = snapshotData['Aceito'] as bool?;
    _coletado = snapshotData['Coletado'] as bool?;
    _coletadoEm = snapshotData['ColetadoEm'] as DateTime?;
    _agendado = snapshotData['Agendado'] as bool?;
    _aggendadoEm = snapshotData['AggendadoEm'] as DateTime?;
    _pago = snapshotData['Pago'] as bool?;
    _pagoEm = snapshotData['PagoEm'] as DateTime?;
    _valorCorrida = castToType<double>(snapshotData['ValorCorrida']);
    _valorProduto = castToType<double>(snapshotData['valorProduto']);
    _nomeMotoboy = snapshotData['nomeMotoboy'] as String?;
    _zap = snapshotData['zap'] as String?;
    _nomeComercio = snapshotData['NomeComercio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Corridas');

  static Stream<CorridasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CorridasRecord.fromSnapshot(s));

  static Future<CorridasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CorridasRecord.fromSnapshot(s));

  static CorridasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CorridasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CorridasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CorridasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CorridasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CorridasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCorridasRecordData({
  DocumentReference? comercio,
  DocumentReference? motoboy,
  DocumentReference? ponto,
  String? status,
  String? detalhe,
  bool? cancelado,
  DateTime? canceladoEm,
  bool? concluido,
  DateTime? concluidoEm,
  bool? disponivel,
  String? idPedido,
  String? foneDestino,
  DateTime? disponivelEm,
  DateTime? aceitoEm,
  bool? aceito,
  bool? coletado,
  DateTime? coletadoEm,
  bool? agendado,
  DateTime? aggendadoEm,
  bool? pago,
  DateTime? pagoEm,
  double? valorCorrida,
  double? valorProduto,
  String? nomeMotoboy,
  String? zap,
  String? nomeComercio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Comercio': comercio,
      'Motoboy': motoboy,
      'Ponto': ponto,
      'Status': status,
      'Detalhe': detalhe,
      'Cancelado': cancelado,
      'CanceladoEm': canceladoEm,
      'Concluido': concluido,
      'ConcluidoEm': concluidoEm,
      'Disponivel': disponivel,
      'IdPedido': idPedido,
      'FoneDestino': foneDestino,
      'DisponivelEm': disponivelEm,
      'AceitoEm': aceitoEm,
      'Aceito': aceito,
      'Coletado': coletado,
      'ColetadoEm': coletadoEm,
      'Agendado': agendado,
      'AggendadoEm': aggendadoEm,
      'Pago': pago,
      'PagoEm': pagoEm,
      'ValorCorrida': valorCorrida,
      'valorProduto': valorProduto,
      'nomeMotoboy': nomeMotoboy,
      'zap': zap,
      'NomeComercio': nomeComercio,
    }.withoutNulls,
  );

  return firestoreData;
}

class CorridasRecordDocumentEquality implements Equality<CorridasRecord> {
  const CorridasRecordDocumentEquality();

  @override
  bool equals(CorridasRecord? e1, CorridasRecord? e2) {
    return e1?.comercio == e2?.comercio &&
        e1?.motoboy == e2?.motoboy &&
        e1?.ponto == e2?.ponto &&
        e1?.status == e2?.status &&
        e1?.detalhe == e2?.detalhe &&
        e1?.cancelado == e2?.cancelado &&
        e1?.canceladoEm == e2?.canceladoEm &&
        e1?.concluido == e2?.concluido &&
        e1?.concluidoEm == e2?.concluidoEm &&
        e1?.disponivel == e2?.disponivel &&
        e1?.idPedido == e2?.idPedido &&
        e1?.foneDestino == e2?.foneDestino &&
        e1?.disponivelEm == e2?.disponivelEm &&
        e1?.aceitoEm == e2?.aceitoEm &&
        e1?.aceito == e2?.aceito &&
        e1?.coletado == e2?.coletado &&
        e1?.coletadoEm == e2?.coletadoEm &&
        e1?.agendado == e2?.agendado &&
        e1?.aggendadoEm == e2?.aggendadoEm &&
        e1?.pago == e2?.pago &&
        e1?.pagoEm == e2?.pagoEm &&
        e1?.valorCorrida == e2?.valorCorrida &&
        e1?.valorProduto == e2?.valorProduto &&
        e1?.nomeMotoboy == e2?.nomeMotoboy &&
        e1?.zap == e2?.zap &&
        e1?.nomeComercio == e2?.nomeComercio;
  }

  @override
  int hash(CorridasRecord? e) => const ListEquality().hash([
        e?.comercio,
        e?.motoboy,
        e?.ponto,
        e?.status,
        e?.detalhe,
        e?.cancelado,
        e?.canceladoEm,
        e?.concluido,
        e?.concluidoEm,
        e?.disponivel,
        e?.idPedido,
        e?.foneDestino,
        e?.disponivelEm,
        e?.aceitoEm,
        e?.aceito,
        e?.coletado,
        e?.coletadoEm,
        e?.agendado,
        e?.aggendadoEm,
        e?.pago,
        e?.pagoEm,
        e?.valorCorrida,
        e?.valorProduto,
        e?.nomeMotoboy,
        e?.zap,
        e?.nomeComercio
      ]);

  @override
  bool isValidKey(Object? o) => o is CorridasRecord;
}
