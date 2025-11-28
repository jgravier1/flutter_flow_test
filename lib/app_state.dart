import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:ff_commons/api_requests/api_manager.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<dynamic> _microapps = [];
  List<dynamic> get microapps => _microapps;
  set microapps(List<dynamic> value) {
    _microapps = value;
  }

  void addToMicroapps(dynamic value) {
    microapps.add(value);
  }

  void removeFromMicroapps(dynamic value) {
    microapps.remove(value);
  }

  void removeAtIndexFromMicroapps(int index) {
    microapps.removeAt(index);
  }

  void updateMicroappsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    microapps[index] = updateFn(_microapps[index]);
  }

  void insertAtIndexInMicroapps(int index, dynamic value) {
    microapps.insert(index, value);
  }
}
