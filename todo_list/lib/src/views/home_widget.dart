import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_list/src/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var controller = HomeController();

  _success() {
    return ListView.builder(
        itemCount: controller.todoModelList.length,
        itemBuilder: ((context, index) {
          var items = controller.todoModelList;
          return ListTile(
            leading: Checkbox(value: items[index].completed!, onChanged: (value)=>items[index].completed = value),
              title: Text(items[index].title!));

        }));
  }

  _error() {
    return Center(
      child: ElevatedButton(
        child: const Text('Tentar novamente'),
        onPressed: () {controller.start();},
      ),
    );
  }

  _loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  _start() {
    return Container(child: Center(child: Text('Inciando a aplicação...'),),);
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.start:
        {
          return _start();
          break;
        }
      case HomeState.error:
        {
          return _error();
          break;
        }
      case HomeState.loading:
        {
          return _loading();
          break;
        }
      case HomeState.success:
        {
          return _success();
          break;
        }
      default:
        {
          return _start();
          break;
        }
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Todo'),
            actions: [
              IconButton(onPressed: ()=>{controller.start()}, icon: Icon(Icons.refresh ),)
            ],
          ),
          body: AnimatedBuilder(
            animation: controller.stateValueNotifier,
            builder: (context, child) {
              return stateManagement(controller.stateValueNotifier.value);
            },
          )),
    );
  }
}
