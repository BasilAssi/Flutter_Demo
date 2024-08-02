import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

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
  set username(String value) {
    _username = value;
  }

  String _gender = '';
  String get gender => _gender;
  set gender(String value) {
    _gender = value;
  }

  String _image = '';
  String get image => _image;
  set image(String value) {
    _image = value;
  }

  String _drivingLicense = '';
  String get drivingLicense => _drivingLicense;
  set drivingLicense(String value) {
    _drivingLicense = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  String _category = 'smartphones';
  String get category => _category;
  set category(String value) {
    _category = value;
  }

  String _address = '';
  String get address => _address;
  set address(String value) {
    _address = value;
  }

  String _encodedIdForAddress = '';
  String get encodedIdForAddress => _encodedIdForAddress;
  set encodedIdForAddress(String value) {
    _encodedIdForAddress = value;
  }

  bool _selectedAddress = false;
  bool get selectedAddress => _selectedAddress;
  set selectedAddress(bool value) {
    _selectedAddress = value;
  }

  List<dynamic> _products2 = [];
  List<dynamic> get products2 => _products2;
  set products2(List<dynamic> value) {
    _products2 = value;
  }

  void addToProducts2(dynamic value) {
    products2.add(value);
  }

  void removeFromProducts2(dynamic value) {
    products2.remove(value);
  }

  void removeAtIndexFromProducts2(int index) {
    products2.removeAt(index);
  }

  void updateProducts2AtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    products2[index] = updateFn(_products2[index]);
  }

  void insertAtIndexInProducts2(int index, dynamic value) {
    products2.insert(index, value);
  }
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
