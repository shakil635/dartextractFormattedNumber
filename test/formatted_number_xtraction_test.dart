import 'package:formatted_number_xtraction/formatted_number_xtraction.dart';
import 'package:test/test.dart';
// Import your formatted number extraction function file here, e.g.:
// import 'path_to_your_number_extraction_dart_file.dart';

void main() {
  group('Formatted Number Extraction Tests', () {
    test('Valid formatted number', () {
      var result = extractFormattedNumber('(123) 456-7890');
      expect(result, equals('+1-123-456-7890'));
    });

    test('Invalid formatted number', () {
      var result = extractFormattedNumber('123-456-7890');
      expect(result, isNull); // or handle as per your function's design
    });

    test('Empty input', () {
      var result = extractFormattedNumber('');
      expect(result, isNull); // or handle as per your function's design
    });

    // Add more tests for different phone number formats and edge cases.
  });
}
