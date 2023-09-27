import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepsListRecord extends FirestoreRecord {
  RepsListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "owner" field.
  String? _owner;
  String get owner => _owner ?? '';
  bool hasOwner() => _owner != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _position = snapshotData['position'] as String?;
    _owner = snapshotData['owner'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('repsList');

  static Stream<RepsListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RepsListRecord.fromSnapshot(s));

  static Future<RepsListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RepsListRecord.fromSnapshot(s));

  static RepsListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RepsListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RepsListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RepsListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RepsListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RepsListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRepsListRecordData({
  String? position,
  String? owner,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'position': position,
      'owner': owner,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RepsListRecordDocumentEquality implements Equality<RepsListRecord> {
  const RepsListRecordDocumentEquality();

  @override
  bool equals(RepsListRecord? e1, RepsListRecord? e2) {
    return e1?.position == e2?.position &&
        e1?.owner == e2?.owner &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(RepsListRecord? e) =>
      const ListEquality().hash([e?.position, e?.owner, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is RepsListRecord;
}
