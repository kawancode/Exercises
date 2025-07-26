class Platypus implements Comparable<Platypus> {
  double weight;

  Platypus(this.weight);

  @override
  int compareTo(Platypus other) {
    return weight.compareTo(other.weight);
  }
}
void main() {
  var platypuses = [
    Platypus(5.0),
    Platypus(2.3),
    Platypus(3.7),
  ];

  platypuses.sort();  
  for (var p in platypuses) {
    print('Platypus with weight: ${p.weight}');
  }
}