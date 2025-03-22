import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../foundation/abstracts/base_view_model.dart';

part 'main_view_state.g.dart';

@CopyWith(copyWithNull: true)
class MainViewState extends ViewState {
  bool? isLoading;

  MainViewState({this.isLoading}) : super();

  MainViewState.init() : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
