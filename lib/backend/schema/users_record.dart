import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "student_id" field.
  String? _studentId;
  String get studentId => _studentId ?? '';
  bool hasStudentId() => _studentId != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "member_status" field.
  String? _memberStatus;
  String get memberStatus => _memberStatus ?? '';
  bool hasMemberStatus() => _memberStatus != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "voteFirst" field.
  bool? _voteFirst;
  bool get voteFirst => _voteFirst ?? false;
  bool hasVoteFirst() => _voteFirst != null;

  // "ready_toVote" field.
  bool? _readyToVote;
  bool get readyToVote => _readyToVote ?? false;
  bool hasReadyToVote() => _readyToVote != null;

  // "voteCount" field.
  int? _voteCount;
  int get voteCount => _voteCount ?? 0;
  bool hasVoteCount() => _voteCount != null;

  // "done_vote" field.
  bool? _doneVote;
  bool get doneVote => _doneVote ?? false;
  bool hasDoneVote() => _doneVote != null;

  // "vpresVote" field.
  bool? _vpresVote;
  bool get vpresVote => _vpresVote ?? false;
  bool hasVpresVote() => _vpresVote != null;

  // "presVote" field.
  bool? _presVote;
  bool get presVote => _presVote ?? false;
  bool hasPresVote() => _presVote != null;

  // "secVote" field.
  bool? _secVote;
  bool get secVote => _secVote ?? false;
  bool hasSecVote() => _secVote != null;

  // "treasVote" field.
  bool? _treasVote;
  bool get treasVote => _treasVote ?? false;
  bool hasTreasVote() => _treasVote != null;

  // "audiVote" field.
  bool? _audiVote;
  bool get audiVote => _audiVote ?? false;
  bool hasAudiVote() => _audiVote != null;

  // "bmanVote" field.
  bool? _bmanVote;
  bool get bmanVote => _bmanVote ?? false;
  bool hasBmanVote() => _bmanVote != null;

  // "pioVote" field.
  bool? _pioVote;
  bool get pioVote => _pioVote ?? false;
  bool hasPioVote() => _pioVote != null;

  // "repVote" field.
  bool? _repVote;
  bool get repVote => _repVote ?? false;
  bool hasRepVote() => _repVote != null;

  // "is_candidate" field.
  bool? _isCandidate;
  bool get isCandidate => _isCandidate ?? false;
  bool hasIsCandidate() => _isCandidate != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  bool hasIsVerified() => _isVerified != null;

  // "representativesList" field.
  List<RepsInfoStruct>? _representativesList;
  List<RepsInfoStruct> get representativesList =>
      _representativesList ?? const [];
  bool hasRepresentativesList() => _representativesList != null;

  // "presDataList" field.
  List<RepsInfoStruct>? _presDataList;
  List<RepsInfoStruct> get presDataList => _presDataList ?? const [];
  bool hasPresDataList() => _presDataList != null;

  // "vicePresDataList" field.
  List<RepsInfoStruct>? _vicePresDataList;
  List<RepsInfoStruct> get vicePresDataList => _vicePresDataList ?? const [];
  bool hasVicePresDataList() => _vicePresDataList != null;

  // "secDataList" field.
  List<RepsInfoStruct>? _secDataList;
  List<RepsInfoStruct> get secDataList => _secDataList ?? const [];
  bool hasSecDataList() => _secDataList != null;

  // "treasurerDataList" field.
  List<RepsInfoStruct>? _treasurerDataList;
  List<RepsInfoStruct> get treasurerDataList => _treasurerDataList ?? const [];
  bool hasTreasurerDataList() => _treasurerDataList != null;

  // "auditorDataList" field.
  List<RepsInfoStruct>? _auditorDataList;
  List<RepsInfoStruct> get auditorDataList => _auditorDataList ?? const [];
  bool hasAuditorDataList() => _auditorDataList != null;

  // "businessManagerDataList" field.
  List<RepsInfoStruct>? _businessManagerDataList;
  List<RepsInfoStruct> get businessManagerDataList =>
      _businessManagerDataList ?? const [];
  bool hasBusinessManagerDataList() => _businessManagerDataList != null;

  // "pioDataList" field.
  List<RepsInfoStruct>? _pioDataList;
  List<RepsInfoStruct> get pioDataList => _pioDataList ?? const [];
  bool hasPioDataList() => _pioDataList != null;

  // "photos" field.
  DocumentReference? _photos;
  DocumentReference? get photos => _photos;
  bool hasPhotos() => _photos != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _studentId = snapshotData['student_id'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _memberStatus = snapshotData['member_status'] as String?;
    _position = snapshotData['position'] as String?;
    _voteFirst = snapshotData['voteFirst'] as bool?;
    _readyToVote = snapshotData['ready_toVote'] as bool?;
    _voteCount = castToType<int>(snapshotData['voteCount']);
    _doneVote = snapshotData['done_vote'] as bool?;
    _vpresVote = snapshotData['vpresVote'] as bool?;
    _presVote = snapshotData['presVote'] as bool?;
    _secVote = snapshotData['secVote'] as bool?;
    _treasVote = snapshotData['treasVote'] as bool?;
    _audiVote = snapshotData['audiVote'] as bool?;
    _bmanVote = snapshotData['bmanVote'] as bool?;
    _pioVote = snapshotData['pioVote'] as bool?;
    _repVote = snapshotData['repVote'] as bool?;
    _isCandidate = snapshotData['is_candidate'] as bool?;
    _isVerified = snapshotData['is_verified'] as bool?;
    _representativesList = getStructList(
      snapshotData['representativesList'],
      RepsInfoStruct.fromMap,
    );
    _presDataList = getStructList(
      snapshotData['presDataList'],
      RepsInfoStruct.fromMap,
    );
    _vicePresDataList = getStructList(
      snapshotData['vicePresDataList'],
      RepsInfoStruct.fromMap,
    );
    _secDataList = getStructList(
      snapshotData['secDataList'],
      RepsInfoStruct.fromMap,
    );
    _treasurerDataList = getStructList(
      snapshotData['treasurerDataList'],
      RepsInfoStruct.fromMap,
    );
    _auditorDataList = getStructList(
      snapshotData['auditorDataList'],
      RepsInfoStruct.fromMap,
    );
    _businessManagerDataList = getStructList(
      snapshotData['businessManagerDataList'],
      RepsInfoStruct.fromMap,
    );
    _pioDataList = getStructList(
      snapshotData['pioDataList'],
      RepsInfoStruct.fromMap,
    );
    _photos = snapshotData['photos'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

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
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? studentId,
  String? email,
  String? phoneNumber,
  String? memberStatus,
  String? position,
  bool? voteFirst,
  bool? readyToVote,
  int? voteCount,
  bool? doneVote,
  bool? vpresVote,
  bool? presVote,
  bool? secVote,
  bool? treasVote,
  bool? audiVote,
  bool? bmanVote,
  bool? pioVote,
  bool? repVote,
  bool? isCandidate,
  bool? isVerified,
  DocumentReference? photos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'student_id': studentId,
      'email': email,
      'phone_number': phoneNumber,
      'member_status': memberStatus,
      'position': position,
      'voteFirst': voteFirst,
      'ready_toVote': readyToVote,
      'voteCount': voteCount,
      'done_vote': doneVote,
      'vpresVote': vpresVote,
      'presVote': presVote,
      'secVote': secVote,
      'treasVote': treasVote,
      'audiVote': audiVote,
      'bmanVote': bmanVote,
      'pioVote': pioVote,
      'repVote': repVote,
      'is_candidate': isCandidate,
      'is_verified': isVerified,
      'photos': photos,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.studentId == e2?.studentId &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.memberStatus == e2?.memberStatus &&
        e1?.position == e2?.position &&
        e1?.voteFirst == e2?.voteFirst &&
        e1?.readyToVote == e2?.readyToVote &&
        e1?.voteCount == e2?.voteCount &&
        e1?.doneVote == e2?.doneVote &&
        e1?.vpresVote == e2?.vpresVote &&
        e1?.presVote == e2?.presVote &&
        e1?.secVote == e2?.secVote &&
        e1?.treasVote == e2?.treasVote &&
        e1?.audiVote == e2?.audiVote &&
        e1?.bmanVote == e2?.bmanVote &&
        e1?.pioVote == e2?.pioVote &&
        e1?.repVote == e2?.repVote &&
        e1?.isCandidate == e2?.isCandidate &&
        e1?.isVerified == e2?.isVerified &&
        listEquality.equals(e1?.representativesList, e2?.representativesList) &&
        listEquality.equals(e1?.presDataList, e2?.presDataList) &&
        listEquality.equals(e1?.vicePresDataList, e2?.vicePresDataList) &&
        listEquality.equals(e1?.secDataList, e2?.secDataList) &&
        listEquality.equals(e1?.treasurerDataList, e2?.treasurerDataList) &&
        listEquality.equals(e1?.auditorDataList, e2?.auditorDataList) &&
        listEquality.equals(
            e1?.businessManagerDataList, e2?.businessManagerDataList) &&
        listEquality.equals(e1?.pioDataList, e2?.pioDataList) &&
        e1?.photos == e2?.photos;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.studentId,
        e?.email,
        e?.phoneNumber,
        e?.memberStatus,
        e?.position,
        e?.voteFirst,
        e?.readyToVote,
        e?.voteCount,
        e?.doneVote,
        e?.vpresVote,
        e?.presVote,
        e?.secVote,
        e?.treasVote,
        e?.audiVote,
        e?.bmanVote,
        e?.pioVote,
        e?.repVote,
        e?.isCandidate,
        e?.isVerified,
        e?.representativesList,
        e?.presDataList,
        e?.vicePresDataList,
        e?.secDataList,
        e?.treasurerDataList,
        e?.auditorDataList,
        e?.businessManagerDataList,
        e?.pioDataList,
        e?.photos
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
