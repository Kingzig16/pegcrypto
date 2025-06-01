// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExchangeDataStruct extends BaseStruct {
  ExchangeDataStruct({
    String? source,
    int? sourcevalue,
    String? destination,
    int? destinationvalue,
    String? contacts,
    int? id,
  })  : _source = source,
        _sourcevalue = sourcevalue,
        _destination = destination,
        _destinationvalue = destinationvalue,
        _contacts = contacts,
        _id = id;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  // "sourcevalue" field.
  int? _sourcevalue;
  int get sourcevalue => _sourcevalue ?? 0;
  set sourcevalue(int? val) => _sourcevalue = val;

  void incrementSourcevalue(int amount) => sourcevalue = sourcevalue + amount;

  bool hasSourcevalue() => _sourcevalue != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  set destination(String? val) => _destination = val;

  bool hasDestination() => _destination != null;

  // "destinationvalue" field.
  int? _destinationvalue;
  int get destinationvalue => _destinationvalue ?? 0;
  set destinationvalue(int? val) => _destinationvalue = val;

  void incrementDestinationvalue(int amount) =>
      destinationvalue = destinationvalue + amount;

  bool hasDestinationvalue() => _destinationvalue != null;

  // "contacts" field.
  String? _contacts;
  String get contacts => _contacts ?? '';
  set contacts(String? val) => _contacts = val;

  bool hasContacts() => _contacts != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static ExchangeDataStruct fromMap(Map<String, dynamic> data) =>
      ExchangeDataStruct(
        source: data['source'] as String?,
        sourcevalue: castToType<int>(data['sourcevalue']),
        destination: data['destination'] as String?,
        destinationvalue: castToType<int>(data['destinationvalue']),
        contacts: data['contacts'] as String?,
        id: castToType<int>(data['id']),
      );

  static ExchangeDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ExchangeDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'source': _source,
        'sourcevalue': _sourcevalue,
        'destination': _destination,
        'destinationvalue': _destinationvalue,
        'contacts': _contacts,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
        'sourcevalue': serializeParam(
          _sourcevalue,
          ParamType.int,
        ),
        'destination': serializeParam(
          _destination,
          ParamType.String,
        ),
        'destinationvalue': serializeParam(
          _destinationvalue,
          ParamType.int,
        ),
        'contacts': serializeParam(
          _contacts,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static ExchangeDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExchangeDataStruct(
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
        sourcevalue: deserializeParam(
          data['sourcevalue'],
          ParamType.int,
          false,
        ),
        destination: deserializeParam(
          data['destination'],
          ParamType.String,
          false,
        ),
        destinationvalue: deserializeParam(
          data['destinationvalue'],
          ParamType.int,
          false,
        ),
        contacts: deserializeParam(
          data['contacts'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ExchangeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExchangeDataStruct &&
        source == other.source &&
        sourcevalue == other.sourcevalue &&
        destination == other.destination &&
        destinationvalue == other.destinationvalue &&
        contacts == other.contacts &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([source, sourcevalue, destination, destinationvalue, contacts, id]);
}

ExchangeDataStruct createExchangeDataStruct({
  String? source,
  int? sourcevalue,
  String? destination,
  int? destinationvalue,
  String? contacts,
  int? id,
}) =>
    ExchangeDataStruct(
      source: source,
      sourcevalue: sourcevalue,
      destination: destination,
      destinationvalue: destinationvalue,
      contacts: contacts,
      id: id,
    );
