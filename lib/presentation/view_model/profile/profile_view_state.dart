import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';

part 'profile_view_state.g.dart';

@CopyWith(copyWithNull: true)
class ProfileViewState extends ViewState {
  bool? isLoading;

  ProfileViewState({this.isLoading}) : super();

  ProfileViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
