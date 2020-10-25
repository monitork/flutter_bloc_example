import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class BaseBloc extends ChangeNotifier {
  final _loading = BehaviorSubject<bool>();

  Stream<bool> get loading => _loading.stream;

  void setLoading(bool value) => _loading.sink.add(value);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _loading.close();
  }
}
