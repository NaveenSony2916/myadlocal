// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MainViewStateCWProxy {
  MainViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MainViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  MainViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMainViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMainViewState.copyWith.fieldName(...)`
class _$MainViewStateCWProxyImpl implements _$MainViewStateCWProxy {
  const _$MainViewStateCWProxyImpl(this._value);

  final MainViewState _value;

  @override
  MainViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MainViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  MainViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return MainViewState(
      isLoading:
          isLoading == const $CopyWithPlaceholder()
              ? _value.isLoading
              // ignore: cast_nullable_to_non_nullable
              : isLoading as bool?,
    );
  }
}

extension $MainViewStateCopyWith on MainViewState {
  /// Returns a callable class that can be used as follows: `instanceOfMainViewState.copyWith(...)` or like so:`instanceOfMainViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MainViewStateCWProxy get copyWith => _$MainViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `MainViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MainViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  MainViewState copyWithNull({bool isLoading = false}) {
    return MainViewState(isLoading: isLoading == true ? null : this.isLoading);
  }
}
