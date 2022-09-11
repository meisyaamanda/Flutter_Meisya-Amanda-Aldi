class Matematika {
  hasil(){
    print('FPB&KPK adalah');
  }
}

class FPB implements Matematika{
  var x;
  var y;

  FPB(this.x, this.y);

  @override
  hasil() {
    int r = 0;
    while (y != 0) {
      r = x % y;
      x = y;
      y = r;
    }
    return x;
  }
}

class KPK implements Matematika{
  final int x;
  final int y;

  KPK(this.x, this.y);
  @override
  hasil() {
    return x * y ~/ FPB(x, y).hasil();
  }
}

void main(List<String> args) {
  var kpk = KPK(20, 7);
  var fpb = FPB(20, 7);

  print('KPK dari ${kpk.x} dan ${kpk.y} adalah ${kpk.hasil()}');
  print('FPB dari ${fpb.x} dan ${fpb.y} adalah ${fpb.hasil()}');
}