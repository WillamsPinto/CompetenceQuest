// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    int? questionId,
    String? name,
    String? shortDescription,
    List<int>? answersPoints,
    List<OptionsStruct>? answers,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _questionId = questionId,
        _name = name,
        _shortDescription = shortDescription,
        _answersPoints = answersPoints,
        _answers = answers,
        super(firestoreUtilData);

  // "question_id" field.
  int? _questionId;
  int get questionId => _questionId ?? 0;
  set questionId(int? val) => _questionId = val;

  void incrementQuestionId(int amount) => questionId = questionId + amount;

  bool hasQuestionId() => _questionId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  set shortDescription(String? val) => _shortDescription = val;

  bool hasShortDescription() => _shortDescription != null;

  // "answersPoints" field.
  List<int>? _answersPoints;
  List<int> get answersPoints => _answersPoints ?? const [];
  set answersPoints(List<int>? val) => _answersPoints = val;

  void updateAnswersPoints(Function(List<int>) updateFn) {
    updateFn(answersPoints ??= []);
  }

  bool hasAnswersPoints() => _answersPoints != null;

  // "answers" field.
  List<OptionsStruct>? _answers;
  List<OptionsStruct> get answers => _answers ?? const [];
  set answers(List<OptionsStruct>? val) => _answers = val;

  void updateAnswers(Function(List<OptionsStruct>) updateFn) {
    updateFn(answers ??= []);
  }

  bool hasAnswers() => _answers != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        questionId: castToType<int>(data['question_id']),
        name: data['name'] as String?,
        shortDescription: data['shortDescription'] as String?,
        answersPoints: getDataList(data['answersPoints']),
        answers: getStructList(
          data['answers'],
          OptionsStruct.fromMap,
        ),
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'question_id': _questionId,
        'name': _name,
        'shortDescription': _shortDescription,
        'answersPoints': _answersPoints,
        'answers': _answers?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question_id': serializeParam(
          _questionId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'shortDescription': serializeParam(
          _shortDescription,
          ParamType.String,
        ),
        'answersPoints': serializeParam(
          _answersPoints,
          ParamType.int,
          isList: true,
        ),
        'answers': serializeParam(
          _answers,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        questionId: deserializeParam(
          data['question_id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        shortDescription: deserializeParam(
          data['shortDescription'],
          ParamType.String,
          false,
        ),
        answersPoints: deserializeParam<int>(
          data['answersPoints'],
          ParamType.int,
          true,
        ),
        answers: deserializeStructParam<OptionsStruct>(
          data['answers'],
          ParamType.DataStruct,
          true,
          structBuilder: OptionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QuestionStruct &&
        questionId == other.questionId &&
        name == other.name &&
        shortDescription == other.shortDescription &&
        listEquality.equals(answersPoints, other.answersPoints) &&
        listEquality.equals(answers, other.answers);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([questionId, name, shortDescription, answersPoints, answers]);
}

QuestionStruct createQuestionStruct({
  int? questionId,
  String? name,
  String? shortDescription,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      questionId: questionId,
      name: name,
      shortDescription: shortDescription,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? question, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    question
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? question,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (question == null) {
    return;
  }
  if (question.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && question.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionData = getQuestionFirestoreData(question, forFieldValue);
  final nestedData = questionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = question.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? question, [
  bool forFieldValue = false,
]) {
  if (question == null) {
    return {};
  }
  final firestoreData = mapToFirestore(question.toMap());

  // Add any Firestore field values
  question.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questions,
) =>
    questions?.map((e) => getQuestionFirestoreData(e, true)).toList() ?? [];
