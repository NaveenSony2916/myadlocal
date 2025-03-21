
import 'app_exception.dart';

class ServerDown extends AppException {
  final String err;
  ServerDown({this.err = 'Server down please try again later'}) : super(err);
}
