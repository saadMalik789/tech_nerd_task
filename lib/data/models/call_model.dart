class CallDataList{
 final List<CallModel> dataList;

  CallDataList(this.dataList);

  factory CallDataList.fromJson(dynamic json){
    List<CallModel> list = List.empty(growable: true);
    if(json!= null) {
      json.forEach((element) {
        list.add(CallModel.fromJson(element));
      });
    }
    return CallDataList(list);
  }


}
class CallModel {
  final int id;
  final String name;
  final String number;

  CallModel({this.id = -1, this.name = '', this.number = ''});

  factory CallModel.fromJson(dynamic json) {
    return CallModel(
      id: json['id'],
      name: json['name'],
      number: json['number'],
    );
  }
}
