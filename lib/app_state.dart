import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _candidateSwitcherPersisted =
          await secureStorage.getBool('ff_candidateSwitcherPersisted') ??
              _candidateSwitcherPersisted;
    });
    await _safeInitAsync(() async {
      _forRepsBoolean =
          await secureStorage.getBool('ff_forRepsBoolean') ?? _forRepsBoolean;
    });
    await _safeInitAsync(() async {
      _RepresentativeMaxLimit =
          await secureStorage.getInt('ff_RepresentativeMaxLimit') ??
              _RepresentativeMaxLimit;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_User') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_User') ?? '{}';
          _User =
              RepsInfoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _isRepresentativeSelected =
          await secureStorage.getBool('ff_isRepresentativeSelected') ??
              _isRepresentativeSelected;
    });
    await _safeInitAsync(() async {
      _timerAppState = await secureStorage.read(key: 'ff_timerAppState') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_timerAppState'))!)
          : _timerAppState;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _presList = true;
  bool get presList => _presList;
  set presList(bool _value) {
    _presList = _value;
  }

  bool _presSwitch = false;
  bool get presSwitch => _presSwitch;
  set presSwitch(bool _value) {
    _presSwitch = _value;
  }

  bool _vpresidentSwitch = false;
  bool get vpresidentSwitch => _vpresidentSwitch;
  set vpresidentSwitch(bool _value) {
    _vpresidentSwitch = _value;
  }

  bool _secretarySwitch = false;
  bool get secretarySwitch => _secretarySwitch;
  set secretarySwitch(bool _value) {
    _secretarySwitch = _value;
  }

  bool _treasurerSwitch = false;
  bool get treasurerSwitch => _treasurerSwitch;
  set treasurerSwitch(bool _value) {
    _treasurerSwitch = _value;
  }

  bool _auditorSwitch = false;
  bool get auditorSwitch => _auditorSwitch;
  set auditorSwitch(bool _value) {
    _auditorSwitch = _value;
  }

  bool _businessManagerSwitch = false;
  bool get businessManagerSwitch => _businessManagerSwitch;
  set businessManagerSwitch(bool _value) {
    _businessManagerSwitch = _value;
  }

  bool _pioSwitch = false;
  bool get pioSwitch => _pioSwitch;
  set pioSwitch(bool _value) {
    _pioSwitch = _value;
  }

  bool _representativeSwitch = false;
  bool get representativeSwitch => _representativeSwitch;
  set representativeSwitch(bool _value) {
    _representativeSwitch = _value;
  }

  bool _candidateSwitcherPersisted = false;
  bool get candidateSwitcherPersisted => _candidateSwitcherPersisted;
  set candidateSwitcherPersisted(bool _value) {
    _candidateSwitcherPersisted = _value;
    secureStorage.setBool('ff_candidateSwitcherPersisted', _value);
  }

  void deleteCandidateSwitcherPersisted() {
    secureStorage.delete(key: 'ff_candidateSwitcherPersisted');
  }

  bool _forRepsBoolean = false;
  bool get forRepsBoolean => _forRepsBoolean;
  set forRepsBoolean(bool _value) {
    _forRepsBoolean = _value;
    secureStorage.setBool('ff_forRepsBoolean', _value);
  }

  void deleteForRepsBoolean() {
    secureStorage.delete(key: 'ff_forRepsBoolean');
  }

  int _RepresentativeMaxLimit = 6;
  int get RepresentativeMaxLimit => _RepresentativeMaxLimit;
  set RepresentativeMaxLimit(int _value) {
    _RepresentativeMaxLimit = _value;
    secureStorage.setInt('ff_RepresentativeMaxLimit', _value);
  }

  void deleteRepresentativeMaxLimit() {
    secureStorage.delete(key: 'ff_RepresentativeMaxLimit');
  }

  RepsInfoStruct _User = RepsInfoStruct();
  RepsInfoStruct get User => _User;
  set User(RepsInfoStruct _value) {
    _User = _value;
    secureStorage.setString('ff_User', _value.serialize());
  }

  void deleteUser() {
    secureStorage.delete(key: 'ff_User');
  }

  void updateUserStruct(Function(RepsInfoStruct) updateFn) {
    updateFn(_User);
    secureStorage.setString('ff_User', _User.serialize());
  }

  bool _isRepresentativeSelected = false;
  bool get isRepresentativeSelected => _isRepresentativeSelected;
  set isRepresentativeSelected(bool _value) {
    _isRepresentativeSelected = _value;
    secureStorage.setBool('ff_isRepresentativeSelected', _value);
  }

  void deleteIsRepresentativeSelected() {
    secureStorage.delete(key: 'ff_isRepresentativeSelected');
  }

  DateTime? _timerAppState = DateTime.fromMillisecondsSinceEpoch(1695948000000);
  DateTime? get timerAppState => _timerAppState;
  set timerAppState(DateTime? _value) {
    _timerAppState = _value;
    _value != null
        ? secureStorage.setInt(
            'ff_timerAppState', _value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_timerAppState');
  }

  void deleteTimerAppState() {
    secureStorage.delete(key: 'ff_timerAppState');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
