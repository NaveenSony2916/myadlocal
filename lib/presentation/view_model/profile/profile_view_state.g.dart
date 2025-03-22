// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileViewStateCWProxy {
  ProfileViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProfileViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProfileViewState.copyWith.fieldName(...)`
class _$ProfileViewStateCWProxyImpl implements _$ProfileViewStateCWProxy {
  const _$ProfileViewStateCWProxyImpl(this._value);

  final ProfileViewState _value;

  @override
  ProfileViewState isLoading(bool? isLoading) => this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileViewState call({Object? isLoading = const $CopyWithPlaceholder()}) {
    return ProfileViewState(
      isLoading:
          isLoading == const $CopyWithPlaceholder()
              ? _value.isLoading
              // ignore: cast_nullable_to_non_nullable
              : isLoading as bool?,
    );
  }
}

extension $ProfileViewStateCopyWith on ProfileViewState {
  /// Returns a callable class that can be used as follows: `instanceOfProfileViewState.copyWith(...)` or like so:`instanceOfProfileViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileViewStateCWProxy get copyWith => _$ProfileViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `ProfileViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  ProfileViewState copyWithNull({bool isLoading = false}) {
    return ProfileViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
