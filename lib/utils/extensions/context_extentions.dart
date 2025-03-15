import 'package:flutter/material.dart';

extension ContextExtentions on BuildContext {
  
  Future<T?> push<T extends Object?>(Widget widget) async {
    final result = await Navigator.push(this, MaterialPageRoute(
      builder: (context) => widget
    ));
    return result;
  }

  void pop<T extends Object?>([T? result]) {
    Navigator.pop(this, result);
  }

}