import 'dart:math';
import 'package:flutter/services.dart';

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final int selectionIndex = newValue.selection.end;
    final String newText = _formatNumber(newValue.text);
    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(
          offset: min(newText.length,
              selectionIndex + newText.length - newValue.text.length)),
    );
  }

  String _formatNumber(String s) {
    if (s.contains('.')) {
      final parts = s.split('.');
      final integerPart = parts[0].replaceAll(RegExp(r'[^0-9]'), '');
      final formattedIntegerPart = _formatIntegerPart(integerPart);
      final decimalPart = parts[1].replaceAll(RegExp(r'[^0-9]'), '');
      return '$formattedIntegerPart.$decimalPart';
    } else {
      final digitsOnly = s.replaceAll(RegExp(r'[^0-9]'), '');
      return _formatIntegerPart(digitsOnly);
    }
  }

  String _formatIntegerPart(String s) {
    final buffer = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(s[i]);
    }
    return buffer.toString();
  }
}

String formatNumber(String s) {
  final digitsOnly = s.replaceAll(RegExp(r'[^0-9]'), '');
  final buffer = StringBuffer();
  for (int i = 0; i < digitsOnly.length; i++) {
    if (i > 0 && (digitsOnly.length - i) % 3 == 0) {
      buffer.write(',');
    }
    buffer.write(digitsOnly[i]);
  }
  return buffer.toString();
}
