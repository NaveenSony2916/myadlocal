// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compaign_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CompaignViewStateCWProxy {
  CompaignViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CompaignViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CompaignViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  CompaignViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCompaignViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCompaignViewState.copyWith.fieldName(...)`
class _$CompaignViewStateCWProxyImpl implements _$CompaignViewStateCWProxy {
  const _$CompaignViewStateCWProxyImpl(this._value);

  final CompaignViewState _value;

  @override
  CompaignViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CompaignViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CompaignViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  CompaignViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return CompaignViewState(
      isLoading:
          isLoading == const $CopyWithPlaceholder()
              ? _value.isLoading
              // ignore: cast_nullable_to_non_nullable
              : isLoading as bool?,
    );
  }
}

extension $CompaignViewStateCopyWith on CompaignViewState {
  /// Returns a callable class that can be used as follows: `instanceOfCompaignViewState.copyWith(...)` or like so:`instanceOfCompaignViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CompaignViewStateCWProxy get copyWith =>
      _$CompaignViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `CompaignViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CompaignViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  CompaignViewState copyWithNull({bool isLoading = false}) {
    return CompaignViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
