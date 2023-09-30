import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _candidateSwitcherPersisted =
          prefs.getBool('ff_candidateSwitcherPersisted') ??
              _candidateSwitcherPersisted;
    });
    _safeInit(() {
      _forRepsBoolean = prefs.getBool('ff_forRepsBoolean') ?? _forRepsBoolean;
    });
    _safeInit(() {
      _RepresentativeMaxLimit =
          prefs.getInt('ff_RepresentativeMaxLimit') ?? _RepresentativeMaxLimit;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_User')) {
        try {
          final serializedData = prefs.getString('ff_User') ?? '{}';
          _User =
              RepsInfoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _isRepresentativeSelected =
          prefs.getBool('ff_isRepresentativeSelected') ??
              _isRepresentativeSelected;
    });
    _safeInit(() {
      _timerAppState = prefs.containsKey('ff_timerAppState')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_timerAppState')!)
          : _timerAppState;
    });
    _safeInit(() {
      _votingPhaseSwitch =
          prefs.getBool('ff_votingPhaseSwitch') ?? _votingPhaseSwitch;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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
    prefs.setBool('ff_candidateSwitcherPersisted', _value);
  }

  bool _forRepsBoolean = false;
  bool get forRepsBoolean => _forRepsBoolean;
  set forRepsBoolean(bool _value) {
    _forRepsBoolean = _value;
    prefs.setBool('ff_forRepsBoolean', _value);
  }

  int _RepresentativeMaxLimit = 6;
  int get RepresentativeMaxLimit => _RepresentativeMaxLimit;
  set RepresentativeMaxLimit(int _value) {
    _RepresentativeMaxLimit = _value;
    prefs.setInt('ff_RepresentativeMaxLimit', _value);
  }

  RepsInfoStruct _User = RepsInfoStruct();
  RepsInfoStruct get User => _User;
  set User(RepsInfoStruct _value) {
    _User = _value;
    prefs.setString('ff_User', _value.serialize());
  }

  void updateUserStruct(Function(RepsInfoStruct) updateFn) {
    updateFn(_User);
    prefs.setString('ff_User', _User.serialize());
  }

  bool _isRepresentativeSelected = false;
  bool get isRepresentativeSelected => _isRepresentativeSelected;
  set isRepresentativeSelected(bool _value) {
    _isRepresentativeSelected = _value;
    prefs.setBool('ff_isRepresentativeSelected', _value);
  }

  DateTime? _timerAppState = DateTime.fromMillisecondsSinceEpoch(1695948000000);
  DateTime? get timerAppState => _timerAppState;
  set timerAppState(DateTime? _value) {
    _timerAppState = _value;
    _value != null
        ? prefs.setInt('ff_timerAppState', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_timerAppState');
  }

  bool _votingPhaseSwitch = false;
  bool get votingPhaseSwitch => _votingPhaseSwitch;
  set votingPhaseSwitch(bool _value) {
    _votingPhaseSwitch = _value;
    prefs.setBool('ff_votingPhaseSwitch', _value);
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
