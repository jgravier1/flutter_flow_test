// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MicroAppsStruct extends BaseStruct {
  MicroAppsStruct({
    String? id,
    String? name,
    String? imageUrl,
  })  : _id = id,
        _name = name,
        _imageUrl = imageUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '1';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'Emergencia SOS';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl =>
      _imageUrl ?? 'https://cdn-icons-png.flaticon.com/512/6431/6431882.png';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static MicroAppsStruct fromMap(Map<String, dynamic> data) => MicroAppsStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        imageUrl: data['imageUrl'] as String?,
      );

  static MicroAppsStruct? maybeFromMap(dynamic data) => data is Map
      ? MicroAppsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'imageUrl': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static MicroAppsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MicroAppsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MicroAppsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MicroAppsStruct &&
        id == other.id &&
        name == other.name &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, imageUrl]);
}

MicroAppsStruct createMicroAppsStruct({
  String? id,
  String? name,
  String? imageUrl,
}) =>
    MicroAppsStruct(
      id: id,
      name: name,
      imageUrl: imageUrl,
    );
