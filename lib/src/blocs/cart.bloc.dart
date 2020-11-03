import 'package:flutter_bloc/src/models/cart.model.dart';
import 'package:rxdart/rxdart.dart';

import 'base/base.bloc.dart';

//https://acaziasoft.com/training/flutter-architecture-voi-provider-va-provider-architecture-mvvm-phan-1/
class CartBloc extends BaseBloc {
  final _cart = BehaviorSubject<CartModel>();

  Stream<CartModel> get cart => _cart.stream;

  void setCart(CartModel item) => _cart.sink.add(item);

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _cart.close();
  }
}
