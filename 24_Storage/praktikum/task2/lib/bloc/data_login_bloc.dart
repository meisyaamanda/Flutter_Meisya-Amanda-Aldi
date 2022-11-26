import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/models/data_model.dart';
import 'package:task2/sharepreferences/sharepreferences.dart';

part 'data_login_event.dart';
part 'data_login_state.dart';

class DataLoginBloc extends Bloc<DataLoginEvent, DataLoginState> {
  late ShareLogin prefs;
  DataLoginBloc() : super(Initiall(dataLogin: DataModel('', '', '', ''))) {
    prefs = ShareLogin();

    on<TambahData>(
      (event, emit) async {
        await prefs.simpanData(event.dataModel);
        final data = await prefs.ambilData();
        emit(
          Loaded(dataLogin: data!),
        );
      },
    );

    on<HapusData>((event, emit) async {
      await prefs.hapusData();
      final data = await prefs.ambilData();
      emit(Loaded(dataLogin: data!));
    });
  }
}
