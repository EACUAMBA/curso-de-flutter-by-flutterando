class CurrencyModel{
  final String? name;
  final double? metical;
  final double? dollar;
  final double? euro;
  final double? rand;


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CurrencyModel &&
          runtimeType == other.runtimeType &&
          name == other.name;

  @override
  int get hashCode => name.hashCode;

  CurrencyModel({this.name, this.metical, this.dollar, this.euro, this.rand});

  static List<CurrencyModel> getCurrencies(){
    return [
      CurrencyModel(name: 'Metical', metical: 1, dollar: 0.016, euro: 0.014, rand: 0.24),
      CurrencyModel(name: 'Dollar', metical: 63.83, dollar: 1, euro: 0.89, rand: 15.55),
      CurrencyModel(name: 'Euro', metical: 71.35, dollar: 1.12, euro: 1, rand: 0.24),
      CurrencyModel(name: 'Rand', metical: 4.11, dollar: 0.064, euro: 0.058, rand: 1),
    ];
  }




}
