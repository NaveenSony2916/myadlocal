import 'package:flutter/cupertino.dart';

abstract class AppConstants {
  static const formFieldHeight = 50.0;
  static const apiDownMsg = "Server down";
  static const noConnectionErrorMessage = 'Not connected to a network!';
  static const defaultErrorMsg = 'Something went wrong please try again later';
  static const defaultHorizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const defaultPadding = EdgeInsets.all(20);
  static const imagePlaceHolder = 'logo';
}

extension DurationConstants on AppConstants {
  static const defaultListGridTransitionDuration = Duration(milliseconds: 500);
  static const defaultEventTransfomDuration = Duration(milliseconds: 500);
  static const defaultGeneralDialogTransitionDuration =
      Duration(milliseconds: 200);
  static const defaultSnackBarDuration = Duration(seconds: 3);
  static const defaultErrorVisibleDuration = Duration(seconds: 3);
}

extension PagingConstants on AppConstants {
  static const initialPage = 1;
  static const itemsPerPage = 10;
  static const defaultInvisibleItemsThreshold = 3;
}
