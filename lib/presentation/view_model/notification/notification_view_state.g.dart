// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_view_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotificationViewStateCWProxy {
  NotificationViewState isLoading(bool? isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotificationViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotificationViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  NotificationViewState call({bool? isLoading});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNotificationViewState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNotificationViewState.copyWith.fieldName(...)`
class _$NotificationViewStateCWProxyImpl
    implements _$NotificationViewStateCWProxy {
  const _$NotificationViewStateCWProxyImpl(this._value);

  final NotificationViewState _value;

  @override
  NotificationViewState isLoading(bool? isLoading) =>
      this(isLoading: isLoading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotificationViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotificationViewState(...).copyWith(id: 12, name: "My name")
  /// ````
  NotificationViewState call({
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return NotificationViewState(
      isLoading:
          isLoading == const $CopyWithPlaceholder()
              ? _value.isLoading
              // ignore: cast_nullable_to_non_nullable
              : isLoading as bool?,
    );
  }
}

extension $NotificationViewStateCopyWith on NotificationViewState {
  /// Returns a callable class that can be used as follows: `instanceOfNotificationViewState.copyWith(...)` or like so:`instanceOfNotificationViewState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotificationViewStateCWProxy get copyWith =>
      _$NotificationViewStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `NotificationViewState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotificationViewState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  NotificationViewState copyWithNull({bool isLoading = false}) {
    return NotificationViewState(
      isLoading: isLoading == true ? null : this.isLoading,
    );
  }
}
