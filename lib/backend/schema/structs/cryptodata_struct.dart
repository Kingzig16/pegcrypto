// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CryptodataStruct extends BaseStruct {
  CryptodataStruct({
    String? nom,
    int? quantite,
    int? prixUnite,
    String? contacts,
    int? id,
    bool? isDeleted,
    String? dateCreation,
  })  : _nom = nom,
        _quantite = quantite,
        _prixUnite = prixUnite,
        _contacts = contacts,
        _id = id,
        _isDeleted = isDeleted,
        _dateCreation = dateCreation;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  set nom(String? val) => _nom = val;

  bool hasNom() => _nom != null;

  // "quantite" field.
  int? _quantite;
  int get quantite => _quantite ?? 0;
  set quantite(int? val) => _quantite = val;

  void incrementQuantite(int amount) => quantite = quantite + amount;

  bool hasQuantite() => _quantite != null;

  // "prix_unite" field.
  int? _prixUnite;
  int get prixUnite => _prixUnite ?? 0;
  set prixUnite(int? val) => _prixUnite = val;

  void incrementPrixUnite(int amount) => prixUnite = prixUnite + amount;

  bool hasPrixUnite() => _prixUnite != null;

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

  // "is_deleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  set isDeleted(bool? val) => _isDeleted = val;

  bool hasIsDeleted() => _isDeleted != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  static CryptodataStruct fromMap(Map<String, dynamic> data) =>
      CryptodataStruct(
        nom: data['nom'] as String?,
        quantite: castToType<int>(data['quantite']),
        prixUnite: castToType<int>(data['prix_unite']),
        contacts: data['contacts'] as String?,
        id: castToType<int>(data['id']),
        isDeleted: data['is_deleted'] as bool?,
        dateCreation: data['date_creation'] as String?,
      );

  static CryptodataStruct? maybeFromMap(dynamic data) => data is Map
      ? CryptodataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nom': _nom,
        'quantite': _quantite,
        'prix_unite': _prixUnite,
        'contacts': _contacts,
        'id': _id,
        'is_deleted': _isDeleted,
        'date_creation': _dateCreation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nom': serializeParam(
          _nom,
          ParamType.String,
        ),
        'quantite': serializeParam(
          _quantite,
          ParamType.int,
        ),
        'prix_unite': serializeParam(
          _prixUnite,
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
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
      }.withoutNulls;

  static CryptodataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CryptodataStruct(
        nom: deserializeParam(
          data['nom'],
          ParamType.String,
          false,
        ),
        quantite: deserializeParam(
          data['quantite'],
          ParamType.int,
          false,
        ),
        prixUnite: deserializeParam(
          data['prix_unite'],
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
        isDeleted: deserializeParam(
          data['is_deleted'],
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
  String toString() => 'CryptodataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CryptodataStruct &&
        nom == other.nom &&
        quantite == other.quantite &&
        prixUnite == other.prixUnite &&
        contacts == other.contacts &&
        id == other.id &&
        isDeleted == other.isDeleted &&
        dateCreation == other.dateCreation;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nom, quantite, prixUnite, contacts, id, isDeleted, dateCreation]);
}

CryptodataStruct createCryptodataStruct({
  String? nom,
  int? quantite,
  int? prixUnite,
  String? contacts,
  int? id,
  bool? isDeleted,
  String? dateCreation,
}) =>
    CryptodataStruct(
      nom: nom,
      quantite: quantite,
      prixUnite: prixUnite,
      contacts: contacts,
      id: id,
      isDeleted: isDeleted,
      dateCreation: dateCreation,
    );
