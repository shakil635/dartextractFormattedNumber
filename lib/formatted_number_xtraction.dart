/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/formatted_number_xtraction_base.dart';

// TODO: Export any libraries intended for clients of this package.

String extractFormattedNumber(String numbers) {
  final stringSplit = numbers.split(" ");
  final string1 = stringSplit[0];
  final repless = string1.replaceAll("(", "+").replaceAll(")", "-");

  return repless;
}

void main() {
  String ab = '(123) 456-7890';
  print(extractFormattedNumber(ab));
}
