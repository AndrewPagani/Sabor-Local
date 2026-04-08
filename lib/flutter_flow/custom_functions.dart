import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int? verifyCPF(String? textoCPF) {
  return textoCPF?.length ?? 0;
}

bool validarEmail(String? textoEmail) {
  if (textoEmail == null || textoEmail.isEmpty) {
    return false;
  }

  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(textoEmail);
}
