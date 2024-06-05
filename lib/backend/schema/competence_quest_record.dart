import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CompetenceQuestRecord extends FirestoreRecord {
  CompetenceQuestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "foiRespondido" field.
  bool? _foiRespondido;
  bool get foiRespondido => _foiRespondido ?? false;
  bool hasFoiRespondido() => _foiRespondido != null;

  void _initializeFields() {
    _foiRespondido = snapshotData['foiRespondido'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('competenceQuest');

  static Stream<CompetenceQuestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompetenceQuestRecord.fromSnapshot(s));

  static Future<CompetenceQuestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompetenceQuestRecord.fromSnapshot(s));

  static CompetenceQuestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompetenceQuestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompetenceQuestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompetenceQuestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompetenceQuestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompetenceQuestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompetenceQuestRecordData({
  bool? foiRespondido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foiRespondido': foiRespondido,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompetenceQuestRecordDocumentEquality
    implements Equality<CompetenceQuestRecord> {
  const CompetenceQuestRecordDocumentEquality();

  @override
  bool equals(CompetenceQuestRecord? e1, CompetenceQuestRecord? e2) {
    return e1?.foiRespondido == e2?.foiRespondido;
  }

  @override
  int hash(CompetenceQuestRecord? e) =>
      const ListEquality().hash([e?.foiRespondido]);

  @override
  bool isValidKey(Object? o) => o is CompetenceQuestRecord;
}
