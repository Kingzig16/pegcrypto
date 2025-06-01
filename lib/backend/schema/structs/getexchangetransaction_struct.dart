// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetexchangetransactionStruct extends BaseStruct {
  GetexchangetransactionStruct({
    int? exchangeId,
    int? montant,
    String? numero,
    String? wallet,
    int? id,
    int? userId,
    int? isValidate,
    String? proofPath,
    String? validateProofPath,
    String? dateCreation,
    String? source,
    String? destination,
  })  : _exchangeId = exchangeId,
        _montant = montant,
        _numero = numero,
        _wallet = wallet,
        _id = id,
        _userId = userId,
        _isValidate = isValidate,
        _proofPath = proofPath,
        _validateProofPath = validateProofPath,
        _dateCreation = dateCreation,
        _source = source,
        _destination = destination;

  // "exchange_id" field.
  int? _exchangeId;
  int get exchangeId => _exchangeId ?? 0;
  set exchangeId(int? val) => _exchangeId = val;

  void incrementExchangeId(int amount) => exchangeId = exchangeId + amount;

  bool hasExchangeId() => _exchangeId != null;

  // "montant" field.
  int? _montant;
  int get montant => _montant ?? 0;
  set montant(int? val) => _montant = val;

  void incrementMontant(int amount) => montant = montant + amount;

  bool hasMontant() => _montant != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "wallet" field.
  String? _wallet;
  String get wallet => _wallet ?? '';
  set wallet(String? val) => _wallet = val;

  bool hasWallet() => _wallet != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "is_validate" field.
  int? _isValidate;
  int get isValidate => _isValidate ?? 0;
  set isValidate(int? val) => _isValidate = val;

  void incrementIsValidate(int amount) => isValidate = isValidate + amount;

  bool hasIsValidate() => _isValidate != null;

  // "proof_path" field.
  String? _proofPath;
  String get proofPath => _proofPath ?? '';
  set proofPath(String? val) => _proofPath = val;

  bool hasProofPath() => _proofPath != null;

  // "validate_proof_path" field.
  String? _validateProofPath;
  String get validateProofPath => _validateProofPath ?? '';
  set validateProofPath(String? val) => _validateProofPath = val;

  bool hasValidateProofPath() => _validateProofPath != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  // "source" field.
  String? _source;
  String get source => _source ?? '';
  set source(String? val) => _source = val;

  bool hasSource() => _source != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  set destination(String? val) => _destination = val;

  bool hasDestination() => _destination != null;

  static GetexchangetransactionStruct fromMap(Map<String, dynamic> data) =>
      GetexchangetransactionStruct(
        exchangeId: castToType<int>(data['exchange_id']),
        montant: castToType<int>(data['montant']),
        numero: data['numero'] as String?,
        wallet: data['wallet'] as String?,
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        isValidate: castToType<int>(data['is_validate']),
        proofPath: data['proof_path'] as String?,
        validateProofPath: data['validate_proof_path'] as String?,
        dateCreation: data['date_creation'] as String?,
        source: data['source'] as String?,
        destination: data['destination'] as String?,
      );

  static GetexchangetransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? GetexchangetransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'exchange_id': _exchangeId,
        'montant': _montant,
        'numero': _numero,
        'wallet': _wallet,
        'id': _id,
        'user_id': _userId,
        'is_validate': _isValidate,
        'proof_path': _proofPath,
        'validate_proof_path': _validateProofPath,
        'date_creation': _dateCreation,
        'source': _source,
        'destination': _destination,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'exchange_id': serializeParam(
          _exchangeId,
          ParamType.int,
        ),
        'montant': serializeParam(
          _montant,
          ParamType.int,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'wallet': serializeParam(
          _wallet,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'is_validate': serializeParam(
          _isValidate,
          ParamType.int,
        ),
        'proof_path': serializeParam(
          _proofPath,
          ParamType.String,
        ),
        'validate_proof_path': serializeParam(
          _validateProofPath,
          ParamType.String,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
        'source': serializeParam(
          _source,
          ParamType.String,
        ),
        'destination': serializeParam(
          _destination,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetexchangetransactionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetexchangetransactionStruct(
        exchangeId: deserializeParam(
          data['exchange_id'],
          ParamType.int,
          false,
        ),
        montant: deserializeParam(
          data['montant'],
          ParamType.int,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        wallet: deserializeParam(
          data['wallet'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        isValidate: deserializeParam(
          data['is_validate'],
          ParamType.int,
          false,
        ),
        proofPath: deserializeParam(
          data['proof_path'],
          ParamType.String,
          false,
        ),
        validateProofPath: deserializeParam(
          data['validate_proof_path'],
          ParamType.String,
          false,
        ),
        dateCreation: deserializeParam(
          data['date_creation'],
          ParamType.String,
          false,
        ),
        source: deserializeParam(
          data['source'],
          ParamType.String,
          false,
        ),
        destination: deserializeParam(
          data['destination'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetexchangetransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetexchangetransactionStruct &&
        exchangeId == other.exchangeId &&
        montant == other.montant &&
        numero == other.numero &&
        wallet == other.wallet &&
        id == other.id &&
        userId == other.userId &&
        isValidate == other.isValidate &&
        proofPath == other.proofPath &&
        validateProofPath == other.validateProofPath &&
        dateCreation == other.dateCreation &&
        source == other.source &&
        destination == other.destination;
  }

  @override
  int get hashCode => const ListEquality().hash([
        exchangeId,
        montant,
        numero,
        wallet,
        id,
        userId,
        isValidate,
        proofPath,
        validateProofPath,
        dateCreation,
        source,
        destination
      ]);
}

GetexchangetransactionStruct createGetexchangetransactionStruct({
  int? exchangeId,
  int? montant,
  String? numero,
  String? wallet,
  int? id,
  int? userId,
  int? isValidate,
  String? proofPath,
  String? validateProofPath,
  String? dateCreation,
  String? source,
  String? destination,
}) =>
    GetexchangetransactionStruct(
      exchangeId: exchangeId,
      montant: montant,
      numero: numero,
      wallet: wallet,
      id: id,
      userId: userId,
      isValidate: isValidate,
      proofPath: proofPath,
      validateProofPath: validateProofPath,
      dateCreation: dateCreation,
      source: source,
      destination: destination,
    );
