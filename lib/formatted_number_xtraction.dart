/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/formatted_number_xtraction_base.dart';

String? extractFormattedNumber(String phoeNumber) {
  RegExp match = RegExp("^[()]");
  if (!phoeNumber.contains(match) || phoeNumber.isEmpty) {
    return null;
  }

  final reples = phoeNumber.replaceAll(RegExp("[()\\s-]"), "");

  return "+1-${reples.substring(0, 3)}-${reples.substring(3, 6)}-${reples.substring(6, 10)}";
}
