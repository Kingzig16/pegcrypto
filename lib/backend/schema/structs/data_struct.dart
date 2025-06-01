// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    int? id,
    String? nom,
    String? prenoms,
    String? email,
    String? numero,
    String? sexe,
    String? type,
    int? solde,
    String? pays,
    String? ville,
    String? codePost,
    String? dateNaissance,
    String? typePieceIdentite,
    String? numberPieceIdentite,
    String? expirationPieceIdentite,
    String? affiliationCode,
    bool? isEmailVerified,
    bool? isVerified,
    bool? isDeleted,
    bool? isBlocked,
    String? dateCreation,
  })  : _id = id,
        _nom = nom,
        _prenoms = prenoms,
        _email = email,
        _numero = numero,
        _sexe = sexe,
        _type = type,
        _solde = solde,
        _pays = pays,
        _ville = ville,
        _codePost = codePost,
        _dateNaissance = dateNaissance,
        _typePieceIdentite = typePieceIdentite,
        _numberPieceIdentite = numberPieceIdentite,
        _expirationPieceIdentite = expirationPieceIdentite,
        _affiliationCode = affiliationCode,
        _isEmailVerified = isEmailVerified,
        _isVerified = isVerified,
        _isDeleted = isDeleted,
        _isBlocked = isBlocked,
        _dateCreation = dateCreation;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  set nom(String? val) => _nom = val;

  bool hasNom() => _nom != null;

  // "prenoms" field.
  String? _prenoms;
  String get prenoms => _prenoms ?? '';
  set prenoms(String? val) => _prenoms = val;

  bool hasPrenoms() => _prenoms != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;

  bool hasNumero() => _numero != null;

  // "sexe" field.
  String? _sexe;
  String get sexe => _sexe ?? '';
  set sexe(String? val) => _sexe = val;

  bool hasSexe() => _sexe != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "solde" field.
  int? _solde;
  int get solde => _solde ?? 0;
  set solde(int? val) => _solde = val;

  void incrementSolde(int amount) => solde = solde + amount;

  bool hasSolde() => _solde != null;

  // "pays" field.
  String? _pays;
  String get pays => _pays ?? '';
  set pays(String? val) => _pays = val;

  bool hasPays() => _pays != null;

  // "ville" field.
  String? _ville;
  String get ville => _ville ?? '';
  set ville(String? val) => _ville = val;

  bool hasVille() => _ville != null;

  // "code_post" field.
  String? _codePost;
  String get codePost => _codePost ?? '';
  set codePost(String? val) => _codePost = val;

  bool hasCodePost() => _codePost != null;

  // "date_naissance" field.
  String? _dateNaissance;
  String get dateNaissance => _dateNaissance ?? '';
  set dateNaissance(String? val) => _dateNaissance = val;

  bool hasDateNaissance() => _dateNaissance != null;

  // "type_piece_identite" field.
  String? _typePieceIdentite;
  String get typePieceIdentite => _typePieceIdentite ?? '';
  set typePieceIdentite(String? val) => _typePieceIdentite = val;

  bool hasTypePieceIdentite() => _typePieceIdentite != null;

  // "number_piece_identite" field.
  String? _numberPieceIdentite;
  String get numberPieceIdentite => _numberPieceIdentite ?? '';
  set numberPieceIdentite(String? val) => _numberPieceIdentite = val;

  bool hasNumberPieceIdentite() => _numberPieceIdentite != null;

  // "expiration_piece_identite" field.
  String? _expirationPieceIdentite;
  String get expirationPieceIdentite => _expirationPieceIdentite ?? '';
  set expirationPieceIdentite(String? val) => _expirationPieceIdentite = val;

  bool hasExpirationPieceIdentite() => _expirationPieceIdentite != null;

  // "affiliation_code" field.
  String? _affiliationCode;
  String get affiliationCode => _affiliationCode ?? '';
  set affiliationCode(String? val) => _affiliationCode = val;

  bool hasAffiliationCode() => _affiliationCode != null;

  // "is_email_verified" field.
  bool? _isEmailVerified;
  bool get isEmailVerified => _isEmailVerified ?? false;
  set isEmailVerified(bool? val) => _isEmailVerified = val;

  bool hasIsEmailVerified() => _isEmailVerified != null;

  // "is_verified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  set isVerified(bool? val) => _isVerified = val;

  bool hasIsVerified() => _isVerified != null;

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "is_blocked" field.
  bool? _isBlocked;
  bool get isBlocked => _isBlocked ?? false;
  set isBlocked(bool? val) => _isBlocked = val;

  bool hasIsBlocked() => _isBlocked != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        id: castToType<int>(data['id']),
        nom: data['nom'] as String?,
        prenoms: data['prenoms'] as String?,
        email: data['email'] as String?,
        numero: data['numero'] as String?,
        sexe: data['sexe'] as String?,
        type: data['type'] as String?,
        solde: castToType<int>(data['solde']),
        pays: data['pays'] as String?,
        ville: data['ville'] as String?,
        codePost: data['code_post'] as String?,
        dateNaissance: data['date_naissance'] as String?,
        typePieceIdentite: data['type_piece_identite'] as String?,
        numberPieceIdentite: data['number_piece_identite'] as String?,
        expirationPieceIdentite: data['expiration_piece_identite'] as String?,
        affiliationCode: data['affiliation_code'] as String?,
        isEmailVerified: data['is_email_verified'] as bool?,
        isVerified: data['is_verified'] as bool?,
        isDeleted: data['is_deleted'] as bool?,
        isBlocked: data['is_blocked'] as bool?,
        dateCreation: data['date_creation'] as String?,
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nom': _nom,
        'prenoms': _prenoms,
        'email': _email,
        'numero': _numero,
        'sexe': _sexe,
        'type': _type,
        'solde': _solde,
        'pays': _pays,
        'ville': _ville,
        'code_post': _codePost,
        'date_naissance': _dateNaissance,
        'type_piece_identite': _typePieceIdentite,
        'number_piece_identite': _numberPieceIdentite,
        'expiration_piece_identite': _expirationPieceIdentite,
        'affiliation_code': _affiliationCode,
        'is_email_verified': _isEmailVerified,
        'is_verified': _isVerified,
        'is_deleted': _isDeleted,
        'is_blocked': _isBlocked,
        'date_creation': _dateCreation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nom': serializeParam(
          _nom,
          ParamType.String,
        ),
        'prenoms': serializeParam(
          _prenoms,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'sexe': serializeParam(
          _sexe,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'solde': serializeParam(
          _solde,
          ParamType.int,
        ),
        'pays': serializeParam(
          _pays,
          ParamType.String,
        ),
        'ville': serializeParam(
          _ville,
          ParamType.String,
        ),
        'code_post': serializeParam(
          _codePost,
          ParamType.String,
        ),
        'date_naissance': serializeParam(
          _dateNaissance,
          ParamType.String,
        ),
        'type_piece_identite': serializeParam(
          _typePieceIdentite,
          ParamType.String,
        ),
        'number_piece_identite': serializeParam(
          _numberPieceIdentite,
          ParamType.String,
        ),
        'expiration_piece_identite': serializeParam(
          _expirationPieceIdentite,
          ParamType.String,
        ),
        'affiliation_code': serializeParam(
          _affiliationCode,
          ParamType.String,
        ),
        'is_email_verified': serializeParam(
          _isEmailVerified,
          ParamType.bool,
        ),
        'is_verified': serializeParam(
          _isVerified,
          ParamType.bool,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'is_blocked': serializeParam(
          _isBlocked,
          ParamType.bool,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nom: deserializeParam(
          data['nom'],
          ParamType.String,
          false,
        ),
        prenoms: deserializeParam(
          data['prenoms'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        sexe: deserializeParam(
          data['sexe'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        solde: deserializeParam(
          data['solde'],
          ParamType.int,
          false,
        ),
        pays: deserializeParam(
          data['pays'],
          ParamType.String,
          false,
        ),
        ville: deserializeParam(
          data['ville'],
          ParamType.String,
          false,
        ),
        codePost: deserializeParam(
          data['code_post'],
          ParamType.String,
          false,
        ),
        dateNaissance: deserializeParam(
          data['date_naissance'],
          ParamType.String,
          false,
        ),
        typePieceIdentite: deserializeParam(
          data['type_piece_identite'],
          ParamType.String,
          false,
        ),
        numberPieceIdentite: deserializeParam(
          data['number_piece_identite'],
          ParamType.String,
          false,
        ),
        expirationPieceIdentite: deserializeParam(
          data['expiration_piece_identite'],
          ParamType.String,
          false,
        ),
        affiliationCode: deserializeParam(
          data['affiliation_code'],
          ParamType.String,
          false,
        ),
        isEmailVerified: deserializeParam(
          data['is_email_verified'],
          ParamType.bool,
          false,
        ),
        isVerified: deserializeParam(
          data['is_verified'],
          ParamType.bool,
          false,
        ),
        isDeleted: deserializeParam(
          data['is_deleted'],
          ParamType.bool,
          false,
        ),
        isBlocked: deserializeParam(
          data['is_blocked'],
          ParamType.bool,
          false,
        ),
        dateCreation: deserializeParam(
          data['date_creation'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        id == other.id &&
        nom == other.nom &&
        prenoms == other.prenoms &&
        email == other.email &&
        numero == other.numero &&
        sexe == other.sexe &&
        type == other.type &&
        solde == other.solde &&
        pays == other.pays &&
        ville == other.ville &&
        codePost == other.codePost &&
        dateNaissance == other.dateNaissance &&
        typePieceIdentite == other.typePieceIdentite &&
        numberPieceIdentite == other.numberPieceIdentite &&
        expirationPieceIdentite == other.expirationPieceIdentite &&
        affiliationCode == other.affiliationCode &&
        isEmailVerified == other.isEmailVerified &&
        isVerified == other.isVerified &&
        isDeleted == other.isDeleted &&
        isBlocked == other.isBlocked &&
        dateCreation == other.dateCreation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nom,
        prenoms,
        email,
        numero,
        sexe,
        type,
        solde,
        pays,
        ville,
        codePost,
        dateNaissance,
        typePieceIdentite,
        numberPieceIdentite,
        expirationPieceIdentite,
        affiliationCode,
        isEmailVerified,
        isVerified,
        isDeleted,
        isBlocked,
        dateCreation
      ]);
}

DataStruct createDataStruct({
  int? id,
  String? nom,
  String? prenoms,
  String? email,
  String? numero,
  String? sexe,
  String? type,
  int? solde,
  String? pays,
  String? ville,
  String? codePost,
  String? dateNaissance,
  String? typePieceIdentite,
  String? numberPieceIdentite,
  String? expirationPieceIdentite,
  String? affiliationCode,
  bool? isEmailVerified,
  bool? isVerified,
  bool? isDeleted,
  bool? isBlocked,
  String? dateCreation,
}) =>
    DataStruct(
      id: id,
      nom: nom,
      prenoms: prenoms,
      email: email,
      numero: numero,
      sexe: sexe,
      type: type,
      solde: solde,
      pays: pays,
      ville: ville,
      codePost: codePost,
      dateNaissance: dateNaissance,
      typePieceIdentite: typePieceIdentite,
      numberPieceIdentite: numberPieceIdentite,
      expirationPieceIdentite: expirationPieceIdentite,
      affiliationCode: affiliationCode,
      isEmailVerified: isEmailVerified,
      isVerified: isVerified,
      isDeleted: isDeleted,
      isBlocked: isBlocked,
      dateCreation: dateCreation,
    );
