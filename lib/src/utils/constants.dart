// import 'package:another_flushbar/flushbar.dart';
import 'dart:convert';
import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter cpfMaskFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##', filter: {"#": RegExp(r'[0-9]')});

MaskTextInputFormatter cnpjMaskFormatter = MaskTextInputFormatter(
    mask: '##.###.###/####-##', filter: {"#": RegExp(r'[0-9]')});

MaskTextInputFormatter cepMask = MaskTextInputFormatter(
  mask: '#####-###',
  filter: {"#": RegExp(r'[0-9]')},
);

MaskTextInputFormatter birthDateMask = MaskTextInputFormatter(
  mask: '##/##/####',
  filter: {"#": RegExp(r'[0-9]')},
);

double appBarHeight = AppBar().preferredSize.height;

BoxDecoration customDecoration(context, {Color? color}) {
  return BoxDecoration(
    color: color,
    border: Border.all(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.grey[300]!
            : Colors.black45,
        width: 0.5),
    borderRadius: BorderRadius.circular(10),
  );
}

enum HttpStatus { none, loading, success, fail, error }

const String profileImage =
    "https://images.unsplash.com/photo-1531891437562-4301cf35b7e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80";

const String lorem = '';

Future<String> convertImageToBase64({required File fileImage}) async {
  final bytes = File(fileImage.path).readAsBytesSync();
  String base64 = base64Encode(bytes);
  return base64;
}

Future<void> customFlushBar(
    {required String title,
    required String message,
    required Color color,
    required BuildContext context}) async {
  // ignore: avoid_single_cascade_in_expression_statements
  Flushbar(
    maxWidth: 350,
    margin: const EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(10),
    titleText: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    messageText: Text(
      message,
      style: const TextStyle(color: Colors.white),
    ),
    duration: const Duration(seconds: 2),
    backgroundColor: color,
  )..show(context);
}

// DateFormat dateFormatBrl = DateFormat("dd.MM.yyyy");
DateFormat dateFormatEua = DateFormat("yyyy-MM-dd");

bool isDate(String input, String format) {
  try {
    final DateTime d = DateFormat(format).parseStrict(input);
    return true;
  } catch (e) {
    return false;
  }
}

String dateFormatEuaDate({required String date}) {
  var inputFormat = DateFormat('dd/MM/yyyy');
  var inputDate = inputFormat.parse(date).toLocal();
  var outputFormat = DateFormat('yyyy-MM-dd');
  return outputFormat.format(inputDate);
}

String dateFormatBrlComplete({required String date}) {
  var inputFormat = DateFormat('yyyy-MM-ddTHH:mmZ');
  var inputDate = inputFormat.parse(date, true).toLocal();
  var outputFormat = DateFormat('HH:mm dd/MM/yyyy');
  return outputFormat.format(inputDate);
}

String dateFormatBrlTime({required String date}) {
  var inputFormat = DateFormat('yyyy-MM-ddTHH:mmZ');
  var inputDate = inputFormat.parse(date).toLocal();
  var outputFormat = DateFormat('HH:mm');
  return outputFormat.format(inputDate);
}

String dateFormatBrlDate({required String date}) {
  var inputFormat = DateFormat('yyyy-MM-dd HH:mm');
  var inputDate = inputFormat.parse(date);
  var outputFormat = DateFormat('dd/MM/yyyy');
  return outputFormat.format(inputDate);
}
