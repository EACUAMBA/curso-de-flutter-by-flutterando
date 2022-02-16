import 'package:flutter/widgets.dart';
import 'package:todo_list/src/model/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class HomeController{
  List<TodoModel> todoModelList = [];
  TodoRepository _todoRepository = TodoRepository();
  final stateValueNotifier = ValueNotifier<HomeState>(HomeState.start);


  HomeController([TodoRepository? todoRepository]){
    _todoRepository = todoRepository ?? TodoRepository();
  }

  start() async {
    stateValueNotifier.value = HomeState.loading;
    try{
      var fetchTudo = await _todoRepository.fetchTudo();
      todoModelList.addAll(fetchTudo);
      stateValueNotifier.value = HomeState.success;
    }catch(e){
      stateValueNotifier.value = HomeState.error;
    }
  }
}

enum HomeState{
  start, loading, success, error
}