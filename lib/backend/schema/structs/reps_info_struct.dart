// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepsInfoStruct extends FFFirebaseStruct {
  RepsInfoStruct({
    String? photoUrl,
    String? displayName,
    DocumentReference? owner,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _photoUrl = photoUrl,
        _displayName = displayName,
        _owner = owner,
        super(firestoreUtilData);

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;
  bool hasPhotoUrl() => _photoUrl != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;
  bool hasDisplayName() => _displayName != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  set owner(DocumentReference? val) => _owner = val;
  bool hasOwner() => _owner != null;

  static RepsInfoStruct fromMap(Map<String, dynamic> data) => RepsInfoStruct(
        photoUrl: data['photo_url'] as String?,
        displayName: data['display_name'] as String?,
        owner: data['owner'] as DocumentReference?,
      );

  static RepsInfoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RepsInfoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'photo_url': _photoUrl,
        'display_name': _displayName,
        'owner': _owner,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'owner': serializeParam(
          _owner,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static RepsInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      RepsInfoStruct(
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        owner: deserializeParam(
          data['owner'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Users'],
        ),
      );

  @override
  String toString() => 'RepsInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RepsInfoStruct &&
        photoUrl == other.photoUrl &&
        displayName == other.displayName &&
        owner == other.owner;
  }

  @override
  int get hashCode => const ListEquality().hash([photoUrl, displayName, owner]);
}

RepsInfoStruct createRepsInfoStruct({
  String? photoUrl,
  String? displayName,
  DocumentReference? owner,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RepsInfoStruct(
      photoUrl: photoUrl,
      displayName: displayName,
      owner: owner,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RepsInfoStruct? updateRepsInfoStruct(
  RepsInfoStruct? repsInfo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    repsInfo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRepsInfoStructData(
  Map<String, dynamic> firestoreData,
  RepsInfoStruct? repsInfo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (repsInfo == null) {
    return;
  }
  if (repsInfo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && repsInfo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final repsInfoData = getRepsInfoFirestoreData(repsInfo, forFieldValue);
  final nestedData = repsInfoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = repsInfo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRepsInfoFirestoreData(
  RepsInfoStruct? repsInfo, [
  bool forFieldValue = false,
]) {
  if (repsInfo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(repsInfo.toMap());

  // Add any Firestore field values
  repsInfo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRepsInfoListFirestoreData(
  List<RepsInfoStruct>? repsInfos,
) =>
    repsInfos?.map((e) => getRepsInfoFirestoreData(e, true)).toList() ?? [];
