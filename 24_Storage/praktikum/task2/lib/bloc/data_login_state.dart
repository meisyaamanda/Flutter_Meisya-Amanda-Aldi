part of 'data_login_bloc.dart';

abstract class DataLoginState {
  final DataModel dataLogin;
  const DataLoginState({required this.dataLogin});
}

class Initiall extends DataLoginState {
  Initiall({required super.dataLogin});
}

class Loaded extends DataLoginState {
  Loaded({required super.dataLogin});
}
