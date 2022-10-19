import 'package:auto_route_example/state/app_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ItemListPage extends StatelessWidget {
  final AppState appState = GetIt.I.get<AppState>();

  ItemListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List items")),
        body: Center(
            child: ListView.builder(
                itemCount: appState.allProducts.length,
                itemBuilder: ((context, index) => ListTile(
                      leading: IconButton(
                          icon: const Icon(Icons.info_rounded),
                          splashRadius: 20,
                          onPressed: () {
                            appState.selectedProduct =
                                appState.allProducts[index];
                          }),
                      title: Text(appState.allProducts[index].name),
                      trailing: Text("${appState.allProducts[index].price}€"),
                    )))));
  }
}
