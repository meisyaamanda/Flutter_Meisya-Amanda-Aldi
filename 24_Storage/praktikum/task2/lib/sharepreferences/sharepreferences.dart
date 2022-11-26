import 'package:shared_preferences/shared_preferences.dart';
import 'package:task2/models/data_model.dart';

class ShareLogin {
  Future<DataModel?> ambilData() async {
    final data = await SharedPreferences.getInstance();
    final nama = data.getString('nama');
    final email = data.getString('email');
    final no = data.getString('no');
    final password = data.getString('password');
  }

  Future simpanData(DataModel dataModel) async {
    final data = await SharedPreferences.getInstance();
    data.setString('nama', dataModel.nama);
    data.setString('email', dataModel.email);
    data.setString('no', dataModel.no);
    data.setString('password', dataModel.password);
  }

  Future hapusData() async {
    final data = await SharedPreferences.getInstance();
    data.clear();
  }
}
