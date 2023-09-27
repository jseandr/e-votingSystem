// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RandomStringStruct extends FFFirebaseStruct {
  RandomStringStruct({
    String? randomString,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _randomString = randomString,
        super(firestoreUtilData);

  // "randomString" field.
  String? _randomString;
  String get randomString => _randomString ?? '';
  set randomString(String? val) => _randomString = val;
  bool hasRandomString() => _randomString != null;

  static RandomStringStruct fromMap(Map<String, dynamic> data) =>
      RandomStringStruct(
        randomString: data['randomString'] as String?,
      );

  static RandomStringStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RandomStringStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'randomString': _randomString,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'randomString': serializeParam(
          _randomString,
          ParamType.String,
        ),
      }.withoutNulls;

  static RandomStringStruct fromSerializableMap(Map<String, dynamic> data) =>
      RandomStringStruct(
        randomString: deserializeParam(
          data['randomString'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RandomStringStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RandomStringStruct && randomString == other.randomString;
  }

  @override
  int get hashCode => const ListEquality().hash([randomString]);
}

RandomStringStruct createRandomStringStruct({
  String? randomString,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RandomStringStruct(
      randomString: randomString,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RandomStringStruct? updateRandomStringStruct(
  RandomStringStruct? randomStringStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    randomStringStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRandomStringStructData(
  Map<String, dynamic> firestoreData,
  RandomStringStruct? randomStringStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (randomStringStruct == null) {
    return;
  }
  if (randomStringStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && randomStringStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final randomStringStructData =
      getRandomStringFirestoreData(randomStringStruct, forFieldValue);
  final nestedData =
      randomStringStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      randomStringStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRandomStringFirestoreData(
  RandomStringStruct? randomStringStruct, [
  bool forFieldValue = false,
]) {
  if (randomStringStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(randomStringStruct.toMap());

  // Add any Firestore field values
  randomStringStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRandomStringListFirestoreData(
  List<RandomStringStruct>? randomStringStructs,
) =>
    randomStringStructs
        ?.map((e) => getRandomStringFirestoreData(e, true))
        .toList() ??
    [];
