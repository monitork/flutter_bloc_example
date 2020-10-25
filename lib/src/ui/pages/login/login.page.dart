import 'package:flutter/material.dart';
import 'package:flutter_bloc/src/blocs/auth.bloc.dart';
import 'package:flutter_bloc/src/ui/widgets/loading.dart';
import 'package:provider/provider.dart';

import 'login.widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with LoginWidget {
  AuthBloc bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = Provider.of<AuthBloc>(context);
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Loading(
      message: "Loading message",
      status: bloc.loading,
      child: Scaffold(
        body: Container(
          child: form(context, bloc)
        )
      )
    );
  }
}
