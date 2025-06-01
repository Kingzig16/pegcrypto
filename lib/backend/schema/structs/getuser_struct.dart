// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetuserStruct extends BaseStruct {
  GetuserStruct({
    int? status,
    String? message,
    DataStruct? data,
  })  : _status = status,
        _message = message,
        _data = data;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "data" field.
  DataStruct? _data;
  DataStruct get data => _data ?? DataStruct();
  set data(DataStruct? val) => _data = val;

  void updateData(Function(DataStruct) updateFn) {
    updateFn(_data ??= DataStruct());
  }

  bool hasData() => _data != null;

  static GetuserStruct fromMap(Map<String, dynamic> data) => GetuserStruct(
        status: castToType<int>(data['status']),
        message: data['message'] as String?,
        data: data['data'] is DataStruct
            ? data['data']
            : DataStruct.maybeFromMap(data['data']),
      );

  static GetuserStruct? maybeFromMap(dynamic data) =>
      data is Map ? GetuserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static GetuserStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetuserStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'GetuserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetuserStruct &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([status, message, data]);
}

GetuserStruct createGetuserStruct({
  int? status,
  String? message,
  DataStruct? data,
}) =>
    GetuserStruct(
      status: status,
      message: message,
      data: data ?? DataStruct(),
    );
