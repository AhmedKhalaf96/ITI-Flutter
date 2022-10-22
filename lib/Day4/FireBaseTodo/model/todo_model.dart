class todoModel{
  late String datetime;
  late String text;
  todoModel({
    required this.text,required this.datetime,
  });
  todoModel.fromJson(Map<String,dynamic>json){
    datetime=json['datetime'];
    text=json['text'];
  }
  Map<String,dynamic>tomap(){
    return{
      'datetime':datetime,
      'text':text,
    };
  }
}