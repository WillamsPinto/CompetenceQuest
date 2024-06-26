import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompetenceQuestRecord extends FirestoreRecord {
  CompetenceQuestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foiRespondido" field.
  bool? _foiRespondido;
  bool get foiRespondido => _foiRespondido ?? false;
  bool hasFoiRespondido() => _foiRespondido != null;

  // "currentQuestion" field.
  int? _currentQuestion;
  int get currentQuestion => _currentQuestion ?? 0;
  bool hasCurrentQuestion() => _currentQuestion != null;

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "previousQuestion" field.
  int? _previousQuestion;
  int get previousQuestion => _previousQuestion ?? 0;
  bool hasPreviousQuestion() => _previousQuestion != null;

  // "nextQuestion" field.
  int? _nextQuestion;
  int get nextQuestion => _nextQuestion ?? 0;
  bool hasNextQuestion() => _nextQuestion != null;

  // "countRepeat" field.
  int? _countRepeat;
  int get countRepeat => _countRepeat ?? 0;
  bool hasCountRepeat() => _countRepeat != null;

  // "countQuestions" field.
  int? _countQuestions;
  int get countQuestions => _countQuestions ?? 0;
  bool hasCountQuestions() => _countQuestions != null;

  void _initializeFields() {
    _foiRespondido = snapshotData['foiRespondido'] as bool?;
    _currentQuestion = castToType<int>(snapshotData['currentQuestion']);
    _score = castToType<int>(snapshotData['score']);
    _previousQuestion = castToType<int>(snapshotData['previousQuestion']);
    _nextQuestion = castToType<int>(snapshotData['nextQuestion']);
    _countRepeat = castToType<int>(snapshotData['countRepeat']);
    _countQuestions = castToType<int>(snapshotData['countQuestions']);
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
  int? currentQuestion,
  int? score,
  int? previousQuestion,
  int? nextQuestion,
  int? countRepeat,
  int? countQuestions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foiRespondido': foiRespondido,
      'currentQuestion': currentQuestion,
      'score': score,
      'previousQuestion': previousQuestion,
      'nextQuestion': nextQuestion,
      'countRepeat': countRepeat,
      'countQuestions': countQuestions,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompetenceQuestRecordDocumentEquality
    implements Equality<CompetenceQuestRecord> {
  const CompetenceQuestRecordDocumentEquality();

  @override
  bool equals(CompetenceQuestRecord? e1, CompetenceQuestRecord? e2) {
    return e1?.foiRespondido == e2?.foiRespondido &&
        e1?.currentQuestion == e2?.currentQuestion &&
        e1?.score == e2?.score &&
        e1?.previousQuestion == e2?.previousQuestion &&
        e1?.nextQuestion == e2?.nextQuestion &&
        e1?.countRepeat == e2?.countRepeat &&
        e1?.countQuestions == e2?.countQuestions;
  }

  @override
  int hash(CompetenceQuestRecord? e) => const ListEquality().hash([
        e?.foiRespondido,
        e?.currentQuestion,
        e?.score,
        e?.previousQuestion,
        e?.nextQuestion,
        e?.countRepeat,
        e?.countQuestions
      ]);

  @override
  bool isValidKey(Object? o) => o is CompetenceQuestRecord;
}
