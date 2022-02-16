import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/controller/home_controller.dart';
import 'package:todo_list/src/model/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

import 'home_controller_test.mocks.dart';


//class TodoRepositoryMock extends Mock implements TodoRepository{}

@GenerateMocks([TodoRepository])
main() {
  final todoRepositoryMock = MockTodoRepository();
  final HomeController homeController = HomeController(todoRepositoryMock);

  test("Deverá preencher o array todoModelList  do controller", () async {
    var future = Future.value([TodoModel(id: 1, title: 'Fazer a cama.', completed: false, userId: 20)]);
    when(todoRepositoryMock.fetchTudo()).thenAnswer((_) => future);
    await homeController.start();
    expect(1, homeController.todoModelList.first.id);
  });

  test("Verifica se o estado da aplicações vai ser alterado para success após o inicio da actividade.", () async {
    var future = Future.value([TodoModel(id: 1, title: 'Fazer a cama.', completed: false, userId: 20)]);
    when(todoRepositoryMock.fetchTudo()).thenAnswer((_) => future);
    await homeController.start();
    expect(HomeState.success, homeController.stateValueNotifier.value);
  });

  test("Verifica se o estado da aplicações vai ser alterado para error após o inicio da actividade com o lançamento de exceçao.", () async {
    when(todoRepositoryMock.fetchTudo()).thenThrow(Exception('Erro ao buscar dados'));
    await homeController.start();
    expect(homeController.stateValueNotifier., HomeState.error);
  });



}