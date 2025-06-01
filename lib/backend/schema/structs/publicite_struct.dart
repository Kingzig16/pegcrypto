// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PubliciteStruct extends BaseStruct {
  PubliciteStruct({
    int? id,
    String? title,
    String? path,
    String? dateCreation,
  })  : _id = id,
        _title = title,
        _path = path,
        _dateCreation = dateCreation;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "path" field.
  String? _path;
  String get path => _path ?? '';
  set path(String? val) => _path = val;

  bool hasPath() => _path != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  static PubliciteStruct fromMap(Map<String, dynamic> data) => PubliciteStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        path: data['path'] as String?,
        dateCreation: data['date_creation'] as String?,
      );

  static PubliciteStruct? maybeFromMap(dynamic data) => data is Map
      ? PubliciteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'path': _path,
        'date_creation': _dateCreation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'path': serializeParam(
          _path,
          ParamType.String,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
      }.withoutNulls;

  static PubliciteStruct fromSerializableMap(Map<String, dynamic> data) =>
      PubliciteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        path: deserializeParam(
          data['path'],
          ParamType.String,
          false,
        ),
        dateCreation: deserializeParam(
          data['date_creation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PubliciteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PubliciteStruct &&
        id == other.id &&
        title == other.title &&
        path == other.path &&
        dateCreation == other.dateCreation;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, title, path, dateCreation]);
}

PubliciteStruct createPubliciteStruct({
  int? id,
  String? title,
  String? path,
  String? dateCreation,
}) =>
    PubliciteStruct(
      id: id,
      title: title,
      path: path,
      dateCreation: dateCreation,
    );
