// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
/*
import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<String> saveBinaryImageLocally(String base64Data) async {
  try {
    // Convertir la chaîne Base64 en Uint8List
    List<int> bytes = _convertStringToBytes(base64Data);

    // Récupérer le répertoire local
    Directory directory = await getApplicationDocumentsDirectory();

    // Créer le chemin du fichier
    String filePath =
        '${directory.path}/image.png'; // Change le nom et l'extension si nécessaire

    // Créer le fichier et écrire les octets binaires dedans
    File file = File(filePath);
    await file.writeAsBytes(bytes);

    // Retourner le chemin local du fichier sauvegardé
    return file.path;
  } catch (e) {
    print("Erreur lors de l'enregistrement de l'image : $e");
    return "";
  }
}

// Cette fonction convertit la chaîne de caractères en Uint8List
List<int> _convertStringToBytes(String data) {
  List<int> byteList = [];
  for (int i = 0; i < data.length; i++) {
    byteList.add(data
        .codeUnitAt(i)); // Chaque caractère est converti en son code unicode
  }
  return byteList;
}
