import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/core/helpers/nav/nav_no_animation.dart';
import 'package:flutter_bloc/core/helpers/storage/storage.helper.dart';
import 'package:flutter_bloc/core/helpers/storage/storage.keys.dart';
import 'package:flutter_bloc/src/ui/pages/login/login.page.dart';

class DrawerBloc extends ChangeNotifier {
  void logout(BuildContext context) {
    StorageHelper.set(StorageKeys.token, "");
    StorageHelper.set(StorageKeys.login, "");
    StorageHelper.set(StorageKeys.senha, "");

    Navigator.pushReplacement(context, NavNoAnimation(page: LoginPage()));
  }

  void dispose() {
    //dispose observables if make sense
  }
}
