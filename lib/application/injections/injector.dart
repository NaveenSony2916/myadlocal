import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:local/application/injections/injector.config.dart';

/// [GetIt] instance
final GetIt injector = GetIt.instance;

///
/// Setup injector
///
///
///
@injectableInit
Future<GetIt> initializeInjections() async => injector.init();