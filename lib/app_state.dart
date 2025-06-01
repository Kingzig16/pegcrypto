import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _emailverifie =
          await secureStorage.getBool('ff_emailverifie') ?? _emailverifie;
    });
    await _safeInitAsync(() async {
      _authtoken = await secureStorage.getString('ff_authtoken') ?? _authtoken;
    });
    await _safeInitAsync(() async {
      _type = await secureStorage.getString('ff_type') ?? _type;
    });
    await _safeInitAsync(() async {
      _connecte = await secureStorage.getBool('ff_connecte') ?? _connecte;
    });
    await _safeInitAsync(() async {
      _etat = await secureStorage.getString('ff_etat') ?? _etat;
    });
    await _safeInitAsync(() async {
      _agentnom = await secureStorage.getString('ff_agentnom') ?? _agentnom;
    });
    await _safeInitAsync(() async {
      _agentprenom =
          await secureStorage.getString('ff_agentprenom') ?? _agentprenom;
    });
    await _safeInitAsync(() async {
      _agentemail =
          await secureStorage.getString('ff_agentemail') ?? _agentemail;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _pageconnexion = '';
  String get pageconnexion => _pageconnexion;
  set pageconnexion(String value) {
    _pageconnexion = value;
  }

  String _codenumber = '';
  String get codenumber => _codenumber;
  set codenumber(String value) {
    _codenumber = value;
  }

  bool _emailverifie = false;
  bool get emailverifie => _emailverifie;
  set emailverifie(bool value) {
    _emailverifie = value;
    secureStorage.setBool('ff_emailverifie', value);
  }

  void deleteEmailverifie() {
    secureStorage.delete(key: 'ff_emailverifie');
  }

  String _authtoken = '';
  String get authtoken => _authtoken;
  set authtoken(String value) {
    _authtoken = value;
    secureStorage.setString('ff_authtoken', value);
  }

  void deleteAuthtoken() {
    secureStorage.delete(key: 'ff_authtoken');
  }

  bool _profilcompletestate = false;
  bool get profilcompletestate => _profilcompletestate;
  set profilcompletestate(bool value) {
    _profilcompletestate = value;
  }

  bool _achat = false;
  bool get achat => _achat;
  set achat(bool value) {
    _achat = value;
  }

  int _id = 0;
  int get id => _id;
  set id(int value) {
    _id = value;
  }

  bool _investissement = false;
  bool get investissement => _investissement;
  set investissement(bool value) {
    _investissement = value;
  }

  bool _echange = false;
  bool get echange => _echange;
  set echange(bool value) {
    _echange = value;
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String value) {
    _prompt = value;
  }

  List<String> _chat = [];
  List<String> get chat => _chat;
  set chat(List<String> value) {
    _chat = value;
  }

  void addToChat(String value) {
    chat.add(value);
  }

  void removeFromChat(String value) {
    chat.remove(value);
  }

  void removeAtIndexFromChat(int index) {
    chat.removeAt(index);
  }

  void updateChatAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    chat[index] = updateFn(_chat[index]);
  }

  void insertAtIndexInChat(int index, String value) {
    chat.insert(index, value);
  }

  String _type = '';
  String get type => _type;
  set type(String value) {
    _type = value;
    secureStorage.setString('ff_type', value);
  }

  void deleteType() {
    secureStorage.delete(key: 'ff_type');
  }

  dynamic _userdata;
  dynamic get userdata => _userdata;
  set userdata(dynamic value) {
    _userdata = value;
  }

  bool _compteverifie = false;
  bool get compteverifie => _compteverifie;
  set compteverifie(bool value) {
    _compteverifie = value;
  }

  bool _validercrypto = false;
  bool get validercrypto => _validercrypto;
  set validercrypto(bool value) {
    _validercrypto = value;
  }

  bool _validerprojet = false;
  bool get validerprojet => _validerprojet;
  set validerprojet(bool value) {
    _validerprojet = value;
  }

  bool _validertransaction = false;
  bool get validertransaction => _validertransaction;
  set validertransaction(bool value) {
    _validertransaction = value;
  }

  bool _connecte = false;
  bool get connecte => _connecte;
  set connecte(bool value) {
    _connecte = value;
    secureStorage.setBool('ff_connecte', value);
  }

  void deleteConnecte() {
    secureStorage.delete(key: 'ff_connecte');
  }

  String _etat = '';
  String get etat => _etat;
  set etat(String value) {
    _etat = value;
    secureStorage.setString('ff_etat', value);
  }

  void deleteEtat() {
    secureStorage.delete(key: 'ff_etat');
  }

  String _image = '';
  String get image => _image;
  set image(String value) {
    _image = value;
  }

  String _agentnom = '';
  String get agentnom => _agentnom;
  set agentnom(String value) {
    _agentnom = value;
    secureStorage.setString('ff_agentnom', value);
  }

  void deleteAgentnom() {
    secureStorage.delete(key: 'ff_agentnom');
  }

  String _agentprenom = '';
  String get agentprenom => _agentprenom;
  set agentprenom(String value) {
    _agentprenom = value;
    secureStorage.setString('ff_agentprenom', value);
  }

  void deleteAgentprenom() {
    secureStorage.delete(key: 'ff_agentprenom');
  }

  String _agentemail = '';
  String get agentemail => _agentemail;
  set agentemail(String value) {
    _agentemail = value;
    secureStorage.setString('ff_agentemail', value);
  }

  void deleteAgentemail() {
    secureStorage.delete(key: 'ff_agentemail');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
