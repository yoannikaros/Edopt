import 'package:adopt/models/v2/child_model.dart';
import 'package:adopt/service/child_service.dart';
import 'package:flutter/material.dart';


class ChildProvider with ChangeNotifier {
  List<ChildModel> _child = [];

  List<ChildModel> get products => _child;

  set child(List<ChildModel> products) {
    _child = products;
    notifyListeners();
  }

  Future<void> getChilds(
      String id,
      ) async {
    try {
      List<ChildModel> child = await ChildService().getProducts(id);
      _child = child;
    } catch (e) {
      print(e);
    }
  }
}
