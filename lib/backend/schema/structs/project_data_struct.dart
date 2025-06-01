// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectDataStruct extends BaseStruct {
  ProjectDataStruct({
    int? id,
    bool? isDeleted,
    String? titre,
    int? budget,
    String? dateDebut,
    String? dateFin,
    int? moneyReceive,
    String? dateCreation,
    String? contacts,
  })  : _id = id,
        _isDeleted = isDeleted,
        _titre = titre,
        _budget = budget,
        _dateDebut = dateDebut,
        _dateFin = dateFin,
        _moneyReceive = moneyReceive,
        _dateCreation = dateCreation,
        _contacts = contacts;

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

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  set titre(String? val) => _titre = val;

  bool hasTitre() => _titre != null;

  // "budget" field.
  int? _budget;
  int get budget => _budget ?? 0;
  set budget(int? val) => _budget = val;

  void incrementBudget(int amount) => budget = budget + amount;

  bool hasBudget() => _budget != null;

  // "date_debut" field.
  String? _dateDebut;
  String get dateDebut => _dateDebut ?? '';
  set dateDebut(String? val) => _dateDebut = val;

  bool hasDateDebut() => _dateDebut != null;

  // "date_fin" field.
  String? _dateFin;
  String get dateFin => _dateFin ?? '';
  set dateFin(String? val) => _dateFin = val;

  bool hasDateFin() => _dateFin != null;

  // "money_receive" field.
  int? _moneyReceive;
  int get moneyReceive => _moneyReceive ?? 0;
  set moneyReceive(int? val) => _moneyReceive = val;

  void incrementMoneyReceive(int amount) =>
      moneyReceive = moneyReceive + amount;

  bool hasMoneyReceive() => _moneyReceive != null;

  // "date_creation" field.
  String? _dateCreation;
  String get dateCreation => _dateCreation ?? '';
  set dateCreation(String? val) => _dateCreation = val;

  bool hasDateCreation() => _dateCreation != null;

  // "contacts" field.
  String? _contacts;
  String get contacts => _contacts ?? '';
  set contacts(String? val) => _contacts = val;

  bool hasContacts() => _contacts != null;

  static ProjectDataStruct fromMap(Map<String, dynamic> data) =>
      ProjectDataStruct(
        id: castToType<int>(data['id']),
        isDeleted: data['is_deleted'] as bool?,
        titre: data['titre'] as String?,
        budget: castToType<int>(data['budget']),
        dateDebut: data['date_debut'] as String?,
        dateFin: data['date_fin'] as String?,
        moneyReceive: castToType<int>(data['money_receive']),
        dateCreation: data['date_creation'] as String?,
        contacts: data['contacts'] as String?,
      );

  static ProjectDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProjectDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'is_deleted': _isDeleted,
        'titre': _titre,
        'budget': _budget,
        'date_debut': _dateDebut,
        'date_fin': _dateFin,
        'money_receive': _moneyReceive,
        'date_creation': _dateCreation,
        'contacts': _contacts,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'is_deleted': serializeParam(
          _isDeleted,
          ParamType.bool,
        ),
        'titre': serializeParam(
          _titre,
          ParamType.String,
        ),
        'budget': serializeParam(
          _budget,
          ParamType.int,
        ),
        'date_debut': serializeParam(
          _dateDebut,
          ParamType.String,
        ),
        'date_fin': serializeParam(
          _dateFin,
          ParamType.String,
        ),
        'money_receive': serializeParam(
          _moneyReceive,
          ParamType.int,
        ),
        'date_creation': serializeParam(
          _dateCreation,
          ParamType.String,
        ),
        'contacts': serializeParam(
          _contacts,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProjectDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjectDataStruct(
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
        titre: deserializeParam(
          data['titre'],
          ParamType.String,
          false,
        ),
        budget: deserializeParam(
          data['budget'],
          ParamType.int,
          false,
        ),
        dateDebut: deserializeParam(
          data['date_debut'],
          ParamType.String,
          false,
        ),
        dateFin: deserializeParam(
          data['date_fin'],
          ParamType.String,
          false,
        ),
        moneyReceive: deserializeParam(
          data['money_receive'],
          ParamType.int,
          false,
        ),
        dateCreation: deserializeParam(
          data['date_creation'],
          ParamType.String,
          false,
        ),
        contacts: deserializeParam(
          data['contacts'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProjectDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjectDataStruct &&
        id == other.id &&
        isDeleted == other.isDeleted &&
        titre == other.titre &&
        budget == other.budget &&
        dateDebut == other.dateDebut &&
        dateFin == other.dateFin &&
        moneyReceive == other.moneyReceive &&
        dateCreation == other.dateCreation &&
        contacts == other.contacts;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        isDeleted,
        titre,
        budget,
        dateDebut,
        dateFin,
        moneyReceive,
        dateCreation,
        contacts
      ]);
}

ProjectDataStruct createProjectDataStruct({
  int? id,
  bool? isDeleted,
  String? titre,
  int? budget,
  String? dateDebut,
  String? dateFin,
  int? moneyReceive,
  String? dateCreation,
  String? contacts,
}) =>
    ProjectDataStruct(
      id: id,
      isDeleted: isDeleted,
      titre: titre,
      budget: budget,
      dateDebut: dateDebut,
      dateFin: dateFin,
      moneyReceive: moneyReceive,
      dateCreation: dateCreation,
      contacts: contacts,
    );
