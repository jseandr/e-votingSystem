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
      _RepsUptoMax =
          await secureStorage.getInt('ff_RepsUptoMax') ?? _RepsUptoMax;
    });
    await _safeInitAsync(() async {
      _forRepsBoolean =
          await secureStorage.getBool('ff_forRepsBoolean') ?? _forRepsBoolean;
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

  int _RepsUptoMax = 6;
  int get RepsUptoMax => _RepsUptoMax;
  set RepsUptoMax(int _value) {
    _RepsUptoMax = _value;
    secureStorage.setInt('ff_RepsUptoMax', _value);
  }

  void deleteRepsUptoMax() {
    secureStorage.delete(key: 'ff_RepsUptoMax');
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
