import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
  void onThemeChanged(Brightness brightness) {
  // Lógica para reagir à mudança de tema.
  if (brightness == Brightness.dark) {
    debugPrint("HomeProvider: O app agora está no tema escuro!");
  } else {
    debugPrint("HomeProvider: O app agora está no tema claro!");
  }
  // Aqui você poderia, por exemplo, mudar a cor de um elemento
  // que é gerenciado pelo estado do seu provider.
}
}
