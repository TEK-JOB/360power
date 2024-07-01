import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "Alterado_em" field.
  DateTime? _alteradoEm;
  DateTime? get alteradoEm => _alteradoEm;
  bool hasAlteradoEm() => _alteradoEm != null;

  // "Celular" field.
  String? _celular;
  String get celular => _celular ?? '';
  bool hasCelular() => _celular != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "MinhasCorridas" field.
  List<DocumentReference>? _minhasCorridas;
  List<DocumentReference> get minhasCorridas => _minhasCorridas ?? const [];
  bool hasMinhasCorridas() => _minhasCorridas != null;

  // "Nafila" field.
  bool? _nafila;
  bool get nafila => _nafila ?? false;
  bool hasNafila() => _nafila != null;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "biografia" field.
  String? _biografia;
  String get biografia => _biografia ?? '';
  bool hasBiografia() => _biografia != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  bool hasCpf() => _cpf != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "endereco" field.
  DocumentReference? _endereco;
  DocumentReference? get endereco => _endereco;
  bool hasEndereco() => _endereco != null;

  // "GestorEm" field.
  DocumentReference? _gestorEm;
  DocumentReference? get gestorEm => _gestorEm;
  bool hasGestorEm() => _gestorEm != null;

  // "ponto" field.
  DocumentReference? _ponto;
  DocumentReference? get ponto => _ponto;
  bool hasPonto() => _ponto != null;

  // "qtdCorridasHoje" field.
  int? _qtdCorridasHoje;
  int get qtdCorridasHoje => _qtdCorridasHoje ?? 0;
  bool hasQtdCorridasHoje() => _qtdCorridasHoje != null;

  // "GanhosHoje" field.
  double? _ganhosHoje;
  double get ganhosHoje => _ganhosHoje ?? 0.0;
  bool hasGanhosHoje() => _ganhosHoje != null;

  // "PagarHoje" field.
  double? _pagarHoje;
  double get pagarHoje => _pagarHoje ?? 0.0;
  bool hasPagarHoje() => _pagarHoje != null;

  // "meusComercios" field.
  List<DocumentReference>? _meusComercios;
  List<DocumentReference> get meusComercios => _meusComercios ?? const [];
  bool hasMeusComercios() => _meusComercios != null;

  // "Divida" field.
  double? _divida;
  double get divida => _divida ?? 0.0;
  bool hasDivida() => _divida != null;

  // "DocumentosList" field.
  List<String>? _documentosList;
  List<String> get documentosList => _documentosList ?? const [];
  bool hasDocumentosList() => _documentosList != null;

  // "Aprovado" field.
  bool? _aprovado;
  bool get aprovado => _aprovado ?? false;
  bool hasAprovado() => _aprovado != null;

  // "ComercioAtual" field.
  DocumentReference? _comercioAtual;
  DocumentReference? get comercioAtual => _comercioAtual;
  bool hasComercioAtual() => _comercioAtual != null;

  // "Ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  // "Bloqueado" field.
  bool? _bloqueado;
  bool get bloqueado => _bloqueado ?? false;
  bool hasBloqueado() => _bloqueado != null;

  // "Impedido" field.
  bool? _impedido;
  bool get impedido => _impedido ?? false;
  bool hasImpedido() => _impedido != null;

  // "meEscolha" field.
  bool? _meEscolha;
  bool get meEscolha => _meEscolha ?? false;
  bool hasMeEscolha() => _meEscolha != null;

  // "Escolhido" field.
  bool? _escolhido;
  bool get escolhido => _escolhido ?? false;
  bool hasEscolhido() => _escolhido != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _alteradoEm = snapshotData['Alterado_em'] as DateTime?;
    _celular = snapshotData['Celular'] as String?;
    _foto = snapshotData['Foto'] as String?;
    _minhasCorridas = getDataList(snapshotData['MinhasCorridas']);
    _nafila = snapshotData['Nafila'] as bool?;
    _nome = snapshotData['Nome'] as String?;
    _biografia = snapshotData['biografia'] as String?;
    _cpf = snapshotData['cpf'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _endereco = snapshotData['endereco'] as DocumentReference?;
    _gestorEm = snapshotData['GestorEm'] as DocumentReference?;
    _ponto = snapshotData['ponto'] as DocumentReference?;
    _qtdCorridasHoje = castToType<int>(snapshotData['qtdCorridasHoje']);
    _ganhosHoje = castToType<double>(snapshotData['GanhosHoje']);
    _pagarHoje = castToType<double>(snapshotData['PagarHoje']);
    _meusComercios = getDataList(snapshotData['meusComercios']);
    _divida = castToType<double>(snapshotData['Divida']);
    _documentosList = getDataList(snapshotData['DocumentosList']);
    _aprovado = snapshotData['Aprovado'] as bool?;
    _comercioAtual = snapshotData['ComercioAtual'] as DocumentReference?;
    _ativo = snapshotData['Ativo'] as bool?;
    _bloqueado = snapshotData['Bloqueado'] as bool?;
    _impedido = snapshotData['Impedido'] as bool?;
    _meEscolha = snapshotData['meEscolha'] as bool?;
    _escolhido = snapshotData['Escolhido'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? alteradoEm,
  String? celular,
  String? foto,
  bool? nafila,
  String? nome,
  String? biografia,
  String? cpf,
  String? tipo,
  DocumentReference? endereco,
  DocumentReference? gestorEm,
  DocumentReference? ponto,
  int? qtdCorridasHoje,
  double? ganhosHoje,
  double? pagarHoje,
  double? divida,
  bool? aprovado,
  DocumentReference? comercioAtual,
  bool? ativo,
  bool? bloqueado,
  bool? impedido,
  bool? meEscolha,
  bool? escolhido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Alterado_em': alteradoEm,
      'Celular': celular,
      'Foto': foto,
      'Nafila': nafila,
      'Nome': nome,
      'biografia': biografia,
      'cpf': cpf,
      'tipo': tipo,
      'endereco': endereco,
      'GestorEm': gestorEm,
      'ponto': ponto,
      'qtdCorridasHoje': qtdCorridasHoje,
      'GanhosHoje': ganhosHoje,
      'PagarHoje': pagarHoje,
      'Divida': divida,
      'Aprovado': aprovado,
      'ComercioAtual': comercioAtual,
      'Ativo': ativo,
      'Bloqueado': bloqueado,
      'Impedido': impedido,
      'meEscolha': meEscolha,
      'Escolhido': escolhido,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.alteradoEm == e2?.alteradoEm &&
        e1?.celular == e2?.celular &&
        e1?.foto == e2?.foto &&
        listEquality.equals(e1?.minhasCorridas, e2?.minhasCorridas) &&
        e1?.nafila == e2?.nafila &&
        e1?.nome == e2?.nome &&
        e1?.biografia == e2?.biografia &&
        e1?.cpf == e2?.cpf &&
        e1?.tipo == e2?.tipo &&
        e1?.endereco == e2?.endereco &&
        e1?.gestorEm == e2?.gestorEm &&
        e1?.ponto == e2?.ponto &&
        e1?.qtdCorridasHoje == e2?.qtdCorridasHoje &&
        e1?.ganhosHoje == e2?.ganhosHoje &&
        e1?.pagarHoje == e2?.pagarHoje &&
        listEquality.equals(e1?.meusComercios, e2?.meusComercios) &&
        e1?.divida == e2?.divida &&
        listEquality.equals(e1?.documentosList, e2?.documentosList) &&
        e1?.aprovado == e2?.aprovado &&
        e1?.comercioAtual == e2?.comercioAtual &&
        e1?.ativo == e2?.ativo &&
        e1?.bloqueado == e2?.bloqueado &&
        e1?.impedido == e2?.impedido &&
        e1?.meEscolha == e2?.meEscolha &&
        e1?.escolhido == e2?.escolhido;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.alteradoEm,
        e?.celular,
        e?.foto,
        e?.minhasCorridas,
        e?.nafila,
        e?.nome,
        e?.biografia,
        e?.cpf,
        e?.tipo,
        e?.endereco,
        e?.gestorEm,
        e?.ponto,
        e?.qtdCorridasHoje,
        e?.ganhosHoje,
        e?.pagarHoje,
        e?.meusComercios,
        e?.divida,
        e?.documentosList,
        e?.aprovado,
        e?.comercioAtual,
        e?.ativo,
        e?.bloqueado,
        e?.impedido,
        e?.meEscolha,
        e?.escolhido
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
