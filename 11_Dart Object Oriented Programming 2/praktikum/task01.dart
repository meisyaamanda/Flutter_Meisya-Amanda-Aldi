class BangunRuang{
  var panjang;
  var lebar;
  var tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  volume(){
    print('volume bangun ruang ');
  }
}

class Kubus extends BangunRuang {
  var sisi;

  Kubus(this.sisi) : super(sisi,sisi,sisi);

  @override
  volume() {
    return (sisi*sisi*sisi);
  }
}

class Balok extends BangunRuang{
Balok(var panjang, var lebar, var tinggi) : super(panjang,lebar,tinggi);

@override
  volume() {
    return (panjang*lebar*tinggi);
  }
}

void main(List<String> args) {
  var kubus1 = Kubus(5);
  var balok1 = Balok(8, 4, 5);

  print('Volume Kubus adalah = ${kubus1.volume()}');
  print('Volume Balok adalah = ${balok1.volume()}');
}