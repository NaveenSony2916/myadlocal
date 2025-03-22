import 'package:copy_with_extension/copy_with_extension.dart';
import '../../../foundation/abstracts/base_view_model.dart';

part 'notification_view_state.g.dart';

@CopyWith(copyWithNull: true)
class NotificationViewState extends ViewState {
  bool? isLoading;
  NotificationViewState({this.isLoading, })
    : super();

  NotificationViewState.init()
    : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
