import '../helper/constants.dart';

extension StringEx on String {
  String get hardCoded => this;
}

extension StringExt on String? {
  String get dataOrEmpty => this ?? '';

  String get apiError => this ?? AppConstants.defaultErrorMsg;

  String get getErrorMsg {
    final value = this ?? '';
    if (value.contains('connection refused')) {
      return 'Service Down Pls Contact System Admin';
    } else if (value.contains('failed host lookup') ||
        value.contains('network is unreachable')) {
      return 'No Internet Connection';
    } else if (value.contains(':')) {
      return value.split(':').lastOrNull ?? AppConstants.defaultErrorMsg;
    } else {
      return value;
    }
  }
}

extension SafeAccess on String? {
  String get dataOrEmptyOrNull => this ?? 'NA';
}

extension SafeInt on int? {
  String get dataOrEmptyOrNull => (this?.toString() ?? 'NA');
}

extension NestedDataExt on Object? {
  String getData(String? Function() accessor, {String callback = ''}) {
    try {
      return accessor() ?? callback;
    } catch (e) {
      return callback;
    }
  }
}
