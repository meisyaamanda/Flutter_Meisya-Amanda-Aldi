part of 'data_login_bloc.dart';

abstract class DataLoginEvent {}

class TambahData extends DataLoginEvent {
  final DataModel dataModel;
  TambahData({required this.dataModel});
}

class HapusData extends DataLoginEvent {}
