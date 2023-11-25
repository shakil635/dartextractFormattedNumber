/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/formatted_number_xtraction_base.dart';

// TODO: Export any libraries intended for clients of this package.

String? extractFormattedNumber(String phoeNumber) {
  if (!phoeNumber.startsWith("()")) {
    return null;
  }
  final reples = phoeNumber.replaceAll("(", "+").replaceAll(")", "");

  return reples;
}
