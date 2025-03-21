// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:local/application/injections/foundation.module.dart' as _i222;
import 'package:local/application/routing/app_router.dart' as _i588;
import 'package:local/domain/services/navigation_service.dart' as _i498;
import 'package:local/utils/common_color/app_color.dart' as _i819;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final foundationModule = _$FoundationModule();
    gh.singleton<_i588.AppRouter>(() => foundationModule.appRouter());
    gh.lazySingleton<_i819.AppColors>(() => foundationModule.appColors());
    gh.singleton<_i498.NavigationService>(
      () => foundationModule.navigationService(gh<_i588.AppRouter>()),
    );
    return this;
  }
}

class _$FoundationModule extends _i222.FoundationModule {}
