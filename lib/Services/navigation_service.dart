import 'package:flutter/cupertino.dart';

class NavigationService {
  GlobalKey<NavigatorState> _navigationKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigationKey => _navigationKey;

  void pop() {
    return _navigationKey.currentState.pop();
  }

  Future<dynamic> navigatTo(String routName, {dynamic arguments}) {
    return _navigationKey.currentState
        .pushNamed(routName, arguments: arguments);
  }
}
