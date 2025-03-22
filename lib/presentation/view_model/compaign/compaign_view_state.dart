import 'package:copy_with_extension/copy_with_extension.dart';
import '../../../foundation/abstracts/base_view_model.dart';
part 'compaign_view_state.g.dart';

@CopyWith(copyWithNull: true)
class CompaignViewState extends ViewState {
  bool? isLoading;
  CompaignViewState({this.isLoading, })
      : super();

  CompaignViewState.init()
      : isLoading = false;

  @override
  List<Object?> get props => <Object?>[isLoading];
}
