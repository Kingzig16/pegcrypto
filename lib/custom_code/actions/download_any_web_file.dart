// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';

import 'package:mime/mime.dart';

import 'dart:html' as html;

Future downloadAnyWebFile(String? url) async {
  Dio dio = Dio();

  try {
    // Téléchargement du fichier
    Response response = await dio.get(
      url!,
      options: Options(responseType: ResponseType.bytes),
    );

    // Récupérer le type MIME depuis les headers
    String? contentType = response.headers.value('content-type');
    String? extension =
        extensionFromMime(contentType ?? 'application/octet-stream') ?? 'bin';

    // Génération du nom du fichier
    String fileName =
        'downloaded_file_${DateTime.now().millisecondsSinceEpoch}.$extension';

    // Création du lien de téléchargement
    final anchor = html.AnchorElement(
        href: html.Url.createObjectUrlFromBlob(
            html.Blob([response.data], contentType)));

    anchor.download = fileName;
    anchor.style.display = 'none';

    html.document.body!.children.add(anchor);
    anchor.click();
    html.document.body!.children.remove(anchor);

    print('File downloaded');
  } catch (e) {
    print('Error downloading file: $e');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
