import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AjudaRecord extends FirestoreRecord {
  AjudaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "Ajuda" field.
  String? _ajuda;
  String get ajuda => _ajuda ?? '';
  bool hasAjuda() => _ajuda != null;

  void _initializeFields() {
    _rua = snapshotData['Rua'] as String?;
    _ajuda = snapshotData['Ajuda'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ajuda');

  static Stream<AjudaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AjudaRecord.fromSnapshot(s));

  static Future<AjudaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AjudaRecord.fromSnapshot(s));

  static AjudaRecord fromSnapshot(DocumentSnapshot snapshot) => AjudaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AjudaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AjudaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AjudaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AjudaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAjudaRecordData({
  String? rua,
  String? ajuda,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Rua': rua,
      'Ajuda': ajuda,
    }.withoutNulls,
  );

  return firestoreData;
}

class AjudaRecordDocumentEquality implements Equality<AjudaRecord> {
  const AjudaRecordDocumentEquality();

  @override
  bool equals(AjudaRecord? e1, AjudaRecord? e2) {
    return e1?.rua == e2?.rua && e1?.ajuda == e2?.ajuda;
  }

  @override
  int hash(AjudaRecord? e) => const ListEquality().hash([e?.rua, e?.ajuda]);

  @override
  bool isValidKey(Object? o) => o is AjudaRecord;
}
