
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

class DioMock extends Mock implements Dio{}

main(){
  const dataAsJson = '[{"userId": 1,"id": 1,"title": "edited_delectus aut autem","completed": false},'
      '{"userId": 1,"id": 2,"title": "quis ut nam facilis et officia qui","completed": false},'
      '{"userId": 1,"id": 3,"title": "fugiat veniam minus","completed": false},'
      '{"userId": 1, "id": 4,"title": "et porro tempora","completed": true},'
      '{"userId": 1,"id": 5,"title": "laboriosam mollitia et enim quasi adipisci quia provident illum","completed": false}]';
  final dio = DioMock();
  final todoRepository = TodoRepository();

  test('Deve trazer a lista de todos', () async{

    final dioAdapter = DioAdapter(dio: todoRepository.dio!);

    dioAdapter.onGet(todoRepository.url, (server) async => server.reply(200, jsonDecode(dataAsJson)));

    final listaTodo = await todoRepository.fetchTudo();
    expect(listaTodo[0].title, 'edited_delectus aut autem');
  });
}