// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetcryptotransactionStruct extends BaseStruct {
  GetcryptotransactionStruct({
    int? cryptoId,
    int? cryptoQuantity,
    String? cryptoWallet,
    int? id,
    int? userId,
    int? isValidate,
    String? proofPath,
    String? validateProofPath,
    String? cryptoName,
    String? dateCreation,
  })  : _cryptoId = cryptoId,
        _cryptoQuantity = cryptoQuantity,
        _cryptoWallet = cryptoWallet,
        _id = id,
        _userId = userId,
        _isValidate = isValidate,
        _proofPath = proofPath,
        _validateProofPath = validateProofPath,
        _cryptoName = cryptoName,
        _dateCreation = dateCreation;

  // "crypto_id" field.
  int? _cryptoId;
  int get cryptoId => _cryptoId ?? 0;
  set cryptoId(int? val) => _cryptoId = val;

  void incrementCryptoId(int amount) => cryptoId = cryptoId + amount;

  bool hasCryptoId() => _cryptoId != null;

  // "crypto_quantity" field.
  int? _cryptoQuantity;
  int get cryptoQuantity => _cryptoQuantity ?? 0;
  set cryptoQuantity(int? val) => _cryptoQuantity = val;

  void incrementCryptoQuantity(int amount) =>
      cryptoQuantity = cryptoQuantity + amount;

  bool hasCryptoQuantity() => _cryptoQuantity != null;

  // "crypto_wallet" field.
  String? _cryptoWallet;
  String get cryptoWallet => _cryptoWallet ?? '';
  set cryptoWallet(String? val) => _cryptoWallet = val;

  bool hasCryptoWallet() => _cryptoWallet != null;

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

  // "crypto_name" field.
  String? _cryptoName;
  String get cryptoName => _cryptoName ?? '';
  set cryptoName(String? val) => _cryptoName = val;

  bool hasCryptoName() => _cryptoName != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  static GetcryptotransactionStruct fromMap(Map<String, dynamic> data) =>
      GetcryptotransactionStruct(
        cryptoId: castToType<int>(data['crypto_id']),
        cryptoQuantity: castToType<int>(data['crypto_quantity']),
        cryptoWallet: data['crypto_wallet'] as String?,
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        isValidate: castToType<int>(data['is_validate']),
        proofPath: data['proof_path'] as String?,
        validateProofPath: data['validate_proof_path'] as String?,
        cryptoName: data['crypto_name'] as String?,
        dateCreation: data['date_creation'] as String?,
      );

  static GetcryptotransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? GetcryptotransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'crypto_id': _cryptoId,
        'crypto_quantity': _cryptoQuantity,
        'crypto_wallet': _cryptoWallet,
        'id': _id,
        'user_id': _userId,
        'is_validate': _isValidate,
        'proof_path': _proofPath,
        'validate_proof_path': _validateProofPath,
        'crypto_name': _cryptoName,
        'date_creation': _dateCreation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'crypto_id': serializeParam(
          _cryptoId,
          ParamType.int,
        ),
        'crypto_quantity': serializeParam(
          _cryptoQuantity,
          ParamType.int,
        ),
        'crypto_wallet': serializeParam(
          _cryptoWallet,
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
        'crypto_name': serializeParam(
          _cryptoName,
          ParamType.String,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetcryptotransactionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetcryptotransactionStruct(
        cryptoId: deserializeParam(
          data['crypto_id'],
          ParamType.int,
          false,
        ),
        cryptoQuantity: deserializeParam(
          data['crypto_quantity'],
          ParamType.int,
          false,
        ),
        cryptoWallet: deserializeParam(
          data['crypto_wallet'],
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
        cryptoName: deserializeParam(
          data['crypto_name'],
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
  String toString() => 'GetcryptotransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetcryptotransactionStruct &&
        cryptoId == other.cryptoId &&
        cryptoQuantity == other.cryptoQuantity &&
        cryptoWallet == other.cryptoWallet &&
        id == other.id &&
        userId == other.userId &&
        isValidate == other.isValidate &&
        proofPath == other.proofPath &&
        validateProofPath == other.validateProofPath &&
        cryptoName == other.cryptoName &&
        dateCreation == other.dateCreation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cryptoId,
        cryptoQuantity,
        cryptoWallet,
        id,
        userId,
        isValidate,
        proofPath,
        validateProofPath,
        cryptoName,
        dateCreation
      ]);
}

GetcryptotransactionStruct createGetcryptotransactionStruct({
  int? cryptoId,
  int? cryptoQuantity,
  String? cryptoWallet,
  int? id,
  int? userId,
  int? isValidate,
  String? proofPath,
  String? validateProofPath,
  String? cryptoName,
  String? dateCreation,
}) =>
    GetcryptotransactionStruct(
      cryptoId: cryptoId,
      cryptoQuantity: cryptoQuantity,
      cryptoWallet: cryptoWallet,
      id: id,
      userId: userId,
      isValidate: isValidate,
      proofPath: proofPath,
      validateProofPath: validateProofPath,
      cryptoName: cryptoName,
      dateCreation: dateCreation,
    );
