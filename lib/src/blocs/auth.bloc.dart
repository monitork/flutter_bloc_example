import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/src/repositories/auth.repository.dart';
import 'package:flutter_bloc/src/widgets/toast.dart';
import 'package:rxdart/rxdart.dart';

import 'base/base.bloc.dart';

class AuthBloc extends BaseBloc {
  AuthRepository _repository = new AuthRepository();

  final _login = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get login => _login.stream;

  void setLogin(String value) => _login.sink.add(value);

  Stream<String> get password => _password.stream;

  void setPassword(String value) => _password.sink.add(value);

  void signIn() async {
    setLoading(true);

    final ret = await _repository.login(_login.value, _password.value);

    setLoading(false);

    if (ret.status == 200) {
      CustomToast.show("Success");
    }

    CustomToast.show(ret.message);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _login.close();
    _password.close();
  }
}
