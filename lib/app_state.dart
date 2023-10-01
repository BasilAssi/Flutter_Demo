import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
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
      _token = prefs.getString('ff_token') ?? _token;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _username = '';
  String get username => _username;
  set username(String _value) {
    _username = _value;
  }

  String _gender = '';
  String get gender => _gender;
  set gender(String _value) {
    _gender = _value;
  }

  String _image = '';
  String get image => _image;
  set image(String _value) {
    _image = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  String _category = 'smartphones';
  String get category => _category;
  set category(String _value) {
    _category = _value;
  }

  String _address = '';
  String get address => _address;
  set address(String _value) {
    _address = _value;
  }

  String _encodedIdForAddress = '';
  String get encodedIdForAddress => _encodedIdForAddress;
  set encodedIdForAddress(String _value) {
    _encodedIdForAddress = _value;
  }

  bool _selectedAddress = false;
  bool get selectedAddress => _selectedAddress;
  set selectedAddress(bool _value) {
    _selectedAddress = _value;
  }

  String _drivingLicense = '';
  String get drivingLicense => _drivingLicense;
  set drivingLicense(String _value) {
    _drivingLicense = _value;
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
