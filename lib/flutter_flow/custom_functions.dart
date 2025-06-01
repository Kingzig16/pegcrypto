import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

int? division(
  int? a,
  int? b,
) {
  // Vérifie si les valeurs sont nulles
  if (a == null || b == null) {
    return 0;
  }

  // Vérifie si la division par zéro est tentée
  if (b == 0) {
    return 0;
  }

  // Retourne le résultat de la division
  return a ~/ b;
}

double valeurEchange(
  int a,
  int b,
) {
  // Vérifie si b est nul pour éviter une augmentation de 0%
  if (b == 0) {
    return a.toDouble();
  }

  // Calcule le pourcentage en plus
  double result = (a + (a * b / 100)) as double;

  // Vérifie si le résultat est un nombre entier
  return result % 1 == 0 ? result.toInt().toDouble() : result;
}
