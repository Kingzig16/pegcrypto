// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetprojecttransactionStruct extends BaseStruct {
  GetprojecttransactionStruct({
    int? projectId,
    int? montant,
    String? numero,
    int? id,
    int? userId,
    int? isValidate,
    String? proofPath,
    String? validateProofPath,
    String? projectTitre,
    String? dateCreation,
  })  : _projectId = projectId,
        _montant = montant,
        _numero = numero,
        _id = id,
        _userId = userId,
        _isValidate = isValidate,
        _proofPath = proofPath,
        _validateProofPath = validateProofPath,
        _projectTitre = projectTitre,
        _dateCreation = dateCreation;

  // "project_id" field.
  int? _projectId;
  int get projectId => _projectId ?? 0;
  set projectId(int? val) => _projectId = val;

  void incrementProjectId(int amount) => projectId = projectId + amount;

  bool hasProjectId() => _projectId != null;

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

  // "project_titre" field.
  String? _projectTitre;
  String get projectTitre => _projectTitre ?? '';
  set projectTitre(String? val) => _projectTitre = val;

  bool hasProjectTitre() => _projectTitre != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  static GetprojecttransactionStruct fromMap(Map<String, dynamic> data) =>
      GetprojecttransactionStruct(
        projectId: castToType<int>(data['project_id']),
        montant: castToType<int>(data['montant']),
        numero: data['numero'] as String?,
        id: castToType<int>(data['id']),
        userId: castToType<int>(data['user_id']),
        isValidate: castToType<int>(data['is_validate']),
        proofPath: data['proof_path'] as String?,
        validateProofPath: data['validate_proof_path'] as String?,
        projectTitre: data['project_titre'] as String?,
        dateCreation: data['date_creation'] as String?,
      );

  static GetprojecttransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? GetprojecttransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'project_id': _projectId,
        'montant': _montant,
        'numero': _numero,
        'id': _id,
        'user_id': _userId,
        'is_validate': _isValidate,
        'proof_path': _proofPath,
        'validate_proof_path': _validateProofPath,
        'project_titre': _projectTitre,
        'date_creation': _dateCreation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'project_id': serializeParam(
          _projectId,
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
        'project_titre': serializeParam(
          _projectTitre,
          ParamType.String,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetprojecttransactionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetprojecttransactionStruct(
        projectId: deserializeParam(
          data['project_id'],
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
        projectTitre: deserializeParam(
          data['project_titre'],
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
  String toString() => 'GetprojecttransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GetprojecttransactionStruct &&
        projectId == other.projectId &&
        montant == other.montant &&
        numero == other.numero &&
        id == other.id &&
        userId == other.userId &&
        isValidate == other.isValidate &&
        proofPath == other.proofPath &&
        validateProofPath == other.validateProofPath &&
        projectTitre == other.projectTitre &&
        dateCreation == other.dateCreation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        projectId,
        montant,
        numero,
        id,
        userId,
        isValidate,
        proofPath,
        validateProofPath,
        projectTitre,
        dateCreation
      ]);
}

GetprojecttransactionStruct createGetprojecttransactionStruct({
  int? projectId,
  int? montant,
  String? numero,
  int? id,
  int? userId,
  int? isValidate,
  String? proofPath,
  String? validateProofPath,
  String? projectTitre,
  String? dateCreation,
}) =>
    GetprojecttransactionStruct(
      projectId: projectId,
      montant: montant,
      numero: numero,
      id: id,
      userId: userId,
      isValidate: isValidate,
      proofPath: proofPath,
      validateProofPath: validateProofPath,
      projectTitre: projectTitre,
      dateCreation: dateCreation,
    );
