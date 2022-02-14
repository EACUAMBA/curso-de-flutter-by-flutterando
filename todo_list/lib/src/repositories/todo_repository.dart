import 'package:dio/dio.dart';
import 'package:todo_list/src/model/todo_model.dart';

class TodoRepository{
  Dio? dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  TodoRepository(){
    dio = Dio();
  }

  Future fetchTudo() async{
    final response = await dio!.get(url);
    var dataList = response.data as List;
    var todoMap = dataList.map((element) { return TodoModel.fromJson(element); });
    return todoMap.toList();
  }

}