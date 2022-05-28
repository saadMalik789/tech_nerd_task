class BuyDataList {
  final List<BuyModel> dataList;

  BuyDataList(this.dataList);

  factory BuyDataList.fromJson(dynamic json) {
    List<BuyModel> list = List.empty(growable: true);
    if (json != null) {
      json.forEach((element) {
        list.add(BuyModel.fromJson(element));
      });
    }
    return BuyDataList(list);
  }
}

class BuyModel {
  final int id;
  final String name;
  final int price;
  final int quantity;
  final int type;

  BuyModel({
    this.id = -1,
    this.name = '',
    this.price = 0,
    this.quantity = 0,
    this.type = 0,
  });

  factory BuyModel.fromJson(dynamic json) {
    return BuyModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      quantity: json['quantity'],
      type: json['type'],
    );
  }


  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    map['quantity'] = quantity;
    map['type'] = type;
    return map;
  }

}
