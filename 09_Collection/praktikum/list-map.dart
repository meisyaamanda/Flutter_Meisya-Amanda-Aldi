// task2
void main(){
  List minuman = [
    ['Coffee Latte', 'Kopi'],
    ['Jus Apel', 'Buah'],
    ['Fanta', 'Soda'],
  ];

  var map = {for(var i in minuman)i[0]:i[1]};
  print(minuman);
  print(map);
}